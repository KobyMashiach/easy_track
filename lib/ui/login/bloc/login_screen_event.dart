part of 'login_screen_bloc.dart';

@freezed
class LoginScreenEvent with _$LoginScreenEvent {
  const factory LoginScreenEvent.signInByGoogle() = _SignInByGoogle;
  const factory LoginScreenEvent.saveUser(
      {required String firstName,
      required String lastName,
      File? image}) = _SaveUser;
}
