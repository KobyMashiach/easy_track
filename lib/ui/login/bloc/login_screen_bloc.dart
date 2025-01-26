import 'package:easy_track/core/global_vars.dart';
import 'package:easy_track/models/user_model/user_model.dart';
import 'package:easy_track/services/firebase/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_screen_bloc.freezed.dart';
part 'login_screen_event.dart';
part 'login_screen_state.dart';

class LoginScreenBloc extends Bloc<LoginScreenEvent, LoginScreenState> {
  LoginScreenBloc() : super(const LoginScreenState.initial()) {
    on<LoginScreenEvent>((event, emit) async {
      await event.map(
        signInByGoogle: (e) async {
          final googleCredential = await loginWithGoogle();
          if (googleCredential != null) {
            globalUser = UserModel.fromJson(
                googleCredential.additionalUserInfo!.profile!);
            emit(const LoginScreenState.navigateHome());
          }
        },
      );
    });
  }
}
