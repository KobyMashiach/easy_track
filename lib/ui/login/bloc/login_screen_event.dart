part of 'login_screen_bloc.dart';

@freezed
class LoginScreenEvent with _$LoginScreenEvent {
  const factory LoginScreenEvent.signInByGoogle() = SignInByGoogle;
  const factory LoginScreenEvent.signInByEmailPassword(
      {required String email,
      required String password}) = SignInByEmailPassword;
  const factory LoginScreenEvent.saveUser(
      {required String firstName,
      required String lastName,
      File? image}) = SaveUser;
}
