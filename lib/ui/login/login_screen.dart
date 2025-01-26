import 'package:easy_track/core/consts.dart';
import 'package:easy_track/core/text_styles.dart';
import 'package:easy_track/i18n/strings.g.dart';
import 'package:easy_track/ui/home/home_screen.dart';
import 'package:easy_track/ui/login/bloc/login_screen_bloc.dart';
import 'package:easy_track/widgets/design/buttons/app_button.dart';
import 'package:easy_track/widgets/design/icons/icons.dart';
import 'package:easy_track/widgets/general/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kh_easy_dev/services/navigate_page.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginScreenBloc(),
      child: BlocConsumer<LoginScreenBloc, LoginScreenState>(
        listener: (context, state) {
          state.maybeWhen(
              navigateHome: () {
                KheasydevNavigatePage()
                    .pushAndRemoveUntilDuration(context, HomeScreen());
              },
              orElse: () {});
        },
        builder: (context, state) {
          final bloc = context.read<LoginScreenBloc>();
          return Scaffold(
            appBar: appAppBar(title: t.login_screen),
            body: Padding(
              padding: const EdgeInsets.all(24),
              child: Center(
                child: Column(
                  children: [
                    Text("Easy Track", style: AppTextStyle().bigTitle),
                    Image.asset(appLogo),
                    Spacer(),
                    appButton(
                      text: t.login_with_google,
                      leftIcon: socialIcons(),
                      onTap: () =>
                          bloc.add(const LoginScreenEvent.signInByGoogle()),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
