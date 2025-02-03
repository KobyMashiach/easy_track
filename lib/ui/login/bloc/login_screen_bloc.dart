import 'dart:io';

import 'package:easy_track/core/global_vars.dart';
import 'package:easy_track/models/user_model/user_model.dart';
import 'package:easy_track/repos/user_repo.dart';
import 'package:easy_track/services/firebase/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_screen_bloc.freezed.dart';
part 'login_screen_event.dart';
part 'login_screen_state.dart';

class LoginScreenBloc extends Bloc<LoginScreenEvent, LoginScreenState> {
  final UserRepo repo;
  LoginScreenBloc(this.repo) : super(const LoginScreenState.initial()) {
    on<LoginScreenEvent>((event, emit) async {
      await event.map(signInByGoogle: (e) async {
        emit(const LoginScreenState.loading());
        final googleCredential = await loginWithGoogle();
        if (googleCredential != null) {
          globalUser =
              UserModel.fromJson(googleCredential.additionalUserInfo!.profile!);
          await repo.checkIfHaveDetails();
          if (globalUser.register == true) {
            emit(const LoginScreenState.navigateHome());
          } else {
            await repo.saveUserFirstTime();
            emit(const LoginScreenState.navigateFillDetails());
          }
        }
        emit(const LoginScreenState.refreshUI());
      }, saveUser: (e) async {
        emit(const LoginScreenState.loading());
        await repo.firstRegister(
            firstName: e.firstName, lastName: e.lastName, file: e.image);
        emit(const LoginScreenState.refreshUI());
        emit(const LoginScreenState.navigateHome());
      }, signInByEmailPassword: (e) async {
        //TODO: from here
        final userCredential =
            await registerOrLoginWithEmailAndPassword(e.email, e.password);
        if (userCredential != null) {
          globalUser = UserModel(email: e.email);
          await repo.checkIfHaveDetails();
          if (globalUser.register == true) {
            emit(const LoginScreenState.navigateHome());
          } else {
            await repo.saveUserFirstTime();
            emit(const LoginScreenState.navigateFillDetails());
          }
        }
      });
    });
  }
}
