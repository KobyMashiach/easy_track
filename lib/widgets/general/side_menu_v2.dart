import 'package:easy_track/core/colors.dart';
import 'package:easy_track/core/global_vars.dart';
import 'package:easy_track/ui/home/home_screen.dart';
import 'package:easy_track/widgets/general/appbar.dart';
import 'package:flutter/material.dart';
import 'package:kh_easy_dev/kh_easy_dev.dart';

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
        text: "Home screen",
        enableColor: pageName == 'home',
        icon: const Icon(Icons.home),
        page: HomeScreen(),
      ),
      // DrawerButtonModel(
      //   text: t.settings,
      //   enableColor: pageName == 'settings',
      //   icon: const Icon(Icons.settings),
      //   page: const SettingsScreen(),
      // ),
    ],
  );
}
