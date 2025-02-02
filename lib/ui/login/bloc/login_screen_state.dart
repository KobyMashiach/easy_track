part of 'login_screen_bloc.dart';

@freezed
class LoginScreenState with _$LoginScreenState {
  const factory LoginScreenState.initial() = _LoginScreenInitial;
  const factory LoginScreenState.navigateHome() = _LoginScreenNavigateHome;
  const factory LoginScreenState.navigateFillDetails() =
      _LoginScreenNavigateFillDetails;
}
