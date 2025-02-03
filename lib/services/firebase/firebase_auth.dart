import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

Future<bool> isUserLoggedIn() async {
  User? user = FirebaseAuth.instance.currentUser;
  return user != null;
}

Future<UserCredential?> loginWithGoogle() async {
  try {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    if (googleUser == null) {
      return null;
    }

    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    return await FirebaseAuth.instance.signInWithCredential(credential);
  } catch (e) {
    log('Error during Google Sign-In: $e');
    return null;
  }
}

Future<UserCredential?> registerOrLoginWithEmailAndPassword(
    String email, String password) async {
  try {
    UserCredential userCredential =
        await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return userCredential;
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found' || e.code == 'invalid-credential') {
      try {
        UserCredential newUserCredential =
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );
        return newUserCredential;
      } on FirebaseAuthException catch (registerError) {
        log('Error during registration: ${registerError.message}');
        return null;
      }
    } else {
      log('Error during login: ${e.message}');
      return null;
    }
  }
}

Future<String> logoutFirestore() async {
  try {
    await FirebaseAuth.instance.signOut();
    return "";
  } catch (e) {
    log(e.toString());
    return "An error occurred while logging out";
  }
}
