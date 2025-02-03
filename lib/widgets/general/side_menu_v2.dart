import 'package:easy_track/core/colors.dart';
import 'package:easy_track/core/global_vars.dart';
import 'package:easy_track/i18n/strings.g.dart';
import 'package:easy_track/main.dart';
import 'package:easy_track/services/firebase/firebase_auth.dart';
import 'package:easy_track/ui/home/home_screen.dart';
import 'package:easy_track/ui/login/login_screen.dart';
import 'package:easy_track/widgets/dialogs/general_dialog.dart';
import 'package:easy_track/widgets/general/appbar.dart';
import 'package:flutter/material.dart';
import 'package:kh_easy_dev/kh_easy_dev.dart';
import 'package:kh_easy_dev/services/navigate_page.dart';

appSideMenuV2(BuildContext context, String pageName) {
  return kheasydevAppDrawerV2(
    name: globalUser.name?.isNotEmpty ?? false ? globalUser.name! : "",
    profileImage:
        globalUser.picture?.isNotEmpty ?? false ? globalUser.picture : null,
    color: AppColors.primaryColor,
    contactsScreenButtomBackground: AppColors.buttomBackground,
    contactsScreenDialogColor: AppColors.primaryColor,
    appBar: appAppBar(title: "Contact Us"),
    context: context,
    appDetails: (globalAppName, globalAppVersion),
    buttonsTextSize: 24,
    languageCode: 'en',
    buttons: [
      DrawerButtonModel(
        text: t.home_screen,
        enableColor: pageName == 'home',
        icon: const Icon(Icons.home),
        page: HomeScreen(),
      ),
      DrawerButtonModel(
        text: t.logout,
        enableColor: pageName == 'settings',
        icon: const Icon(Icons.logout),
        onTap: showLogoutDialog,
      ),
    ],
  );
}

showLogoutDialog() async => await showDialog(
      context: NavigationContextService.navigatorKey.currentContext!,
      builder: (context) => generalDialog(
          title: "${t.sure_logout}?",
          okButtonOnTap: () async {
            await logoutFirestore();
            KheasydevNavigatePage().pushAndRemoveUntil(
                NavigationContextService.navigatorKey.currentContext!,
                LoginScreen());
          }),
    );
