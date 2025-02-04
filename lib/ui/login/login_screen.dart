import 'package:easy_track/core/consts.dart';
import 'package:easy_track/core/text_styles.dart';
import 'package:easy_track/i18n/strings.g.dart';
import 'package:easy_track/repos/user_repo.dart';
import 'package:easy_track/ui/login/inner/fill_details_screen.dart';
import 'package:easy_track/ui/home/home_screen.dart';
import 'package:easy_track/ui/login/bloc/login_screen_bloc.dart';
import 'package:easy_track/widgets/design/buttons/app_button.dart';
import 'package:easy_track/widgets/design/fields/app_textfields.dart';
import 'package:easy_track/widgets/design/icons/icons.dart';
import 'package:easy_track/widgets/general/appbar.dart';
import 'package:easy_track/widgets/general/circular_progress_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kh_easy_dev/kh_easy_dev.dart';
import 'package:kh_easy_dev/services/navigate_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController emailController;
  late TextEditingController passwordController;

  Map<String, bool> validation = {
    'email': false,
    'password': false,
  };

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => UserRepo(),
      child: BlocProvider(
        create: (context) => LoginScreenBloc(context.read<UserRepo>())
          ..add(LoginScreenEvent.initialize()),
        child: BlocConsumer<LoginScreenBloc, LoginScreenState>(
          listenWhen: (previous, current) => current.maybeWhen(
            navigateHome: () => true,
            navigateFillDetails: () => true,
            orElse: () => false,
          ),
          buildWhen: (previous, current) => current.maybeWhen(
            navigateHome: () => false,
            navigateFillDetails: () => false,
            orElse: () => true,
          ),
          listener: (context, state) {
            final bloc = context.read<LoginScreenBloc>();
            state.maybeWhen(
                navigateHome: () => KheasydevNavigatePage()
                    .pushAndRemoveUntilDuration(context, HomeScreen()),
                navigateFillDetails: () => KheasydevNavigatePage().pushDuration(
                      context,
                      FillDetailsScreen(onSave: (firstName, lastName, image) {
                        KheasydevNavigatePage().pop(context);
                        bloc.add(
                          LoginScreenEvent.saveUser(
                              firstName: firstName,
                              lastName: lastName,
                              image: image),
                        );
                      }),
                    ),
                orElse: () {});
          },
          builder: (context, state) {
            final bloc = context.read<LoginScreenBloc>();
            return Scaffold(
              appBar: appAppBar(title: t.login_screen),
              body: Padding(
                padding: const EdgeInsets.all(24),
                child: Center(
                    child: state.maybeWhen(
                  loading: () => CircularProgressImage(),
                  orElse: () => SingleChildScrollView(
                    child: Column(
                      children: [
                        Text("Easy Track", style: AppTextStyle().bigTitle),
                        Image.asset(appLogo, height: 300),
                        AppTextField(
                          hintText: t.email_address,
                          controller: emailController,
                          showError: validation['email']!,
                          keyboard: TextInputType.emailAddress,
                        ),
                        AppTextField(
                          hintText: t.password,
                          controller: passwordController,
                          showError: validation['password']!,
                          checkIfPassword: true,
                        ),
                        appButton(
                          text: t.login_with_email,
                          leftIcon: socialIcons(icon: SocialIcons.email),
                          onTap: () {
                            if (checkValidation()) {
                              bloc.add(
                                LoginScreenEvent.signInByEmailPassword(
                                    email: emailController.text,
                                    password: passwordController.text),
                              );
                            }
                          },
                        ),
                        // Spacer(),
                        const SizedBox(height: 24),
                        Row(
                          spacing: 12,
                          children: [
                            Expanded(child: kheasydevDivider(black: true)),
                            Text(t.or_login_with),
                            Expanded(child: kheasydevDivider(black: true)),
                          ],
                        ),
                        const SizedBox(height: 12),
                        appButton(
                          text: t.login_with_google,
                          leftIcon: socialIcons(),
                          onTap: () =>
                              bloc.add(const LoginScreenEvent.signInByGoogle()),
                        ),
                      ],
                    ),
                  ),
                )),
              ),
            );
          },
        ),
      ),
    );
  }

  bool checkValidation() {
    final emailRegex =
        RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    if (emailController.text.isEmpty) {
      kheasydevAppToast(t.required_email);
      changeValidation(true, false);
      return false;
    } else if (!emailRegex.hasMatch(emailController.text)) {
      kheasydevAppToast(t.email_invalid);
      changeValidation(true, false);
      return false;
    } else if (passwordController.text.isEmpty) {
      kheasydevAppToast(t.required_password);
      changeValidation(false, true);

      return false;
    } else if (passwordController.text.length < 6) {
      kheasydevAppToast(t.pasword_least_6_chars);
      changeValidation(false, true);

      return false;
    }
    changeValidation(false, false);

    return true;
  }

  changeValidation(bool email, bool password) {
    setState(() {
      validation['email'] = email;
      validation['password'] = password;
    });
  }
}
