import 'dart:developer';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_track/core/global_vars.dart';
import 'package:easy_track/services/firebase/firestore_data.dart';

class UserRepo {
  UserRepo();
  final String docName = 'userDetails';

  Future<bool> checkIfHaveDetails() async {
    final collection = FirebaseFirestore.instance.collection(globalUser.email);

    final collectionExist =
        await firestoreCheckIfCollectionExists(globalUser.email);
    final docExist = await firestoreCheckIfDocExists(collection, docName);
    if (collectionExist && docExist) {
      final user = await firestoreGetDocValues(collection, docName);
      if (user['register'] == true) {
        globalUser = globalUser.copyWith(
          firstName: user['firstName'],
          lastName: user['lastName'],
          picture: user['picture'],
          name: user['name'],
          register: user['register'],
        );
      }
      log(user.toString());
      return true;
    }
    return false;
  }

  Future<dynamic> saveUserFirstTime() async {
    final collection = FirebaseFirestore.instance.collection(globalUser.email);
    firestoreNewDoc(collection, docName: docName, values: globalUser.toJson());
    firestoreNewDoc(collection, docName: 'categories');
  }

  Future<dynamic> firstRegister(
      {required String firstName, required String lastName, File? file}) async {
    final collection = FirebaseFirestore.instance.collection(globalUser.email);

    final name = "${capitalizeFirst(firstName)} ${capitalizeFirst(lastName)}";
    String? imageUrl;
    if (file != null) {
      imageUrl = await firestoreUploadImageToStorage(
          path: globalUser.email, imageFile: file, imageName: 'profileImage');
    }

    globalUser = globalUser.copyWith(
      firstName: capitalizeFirst(firstName),
      lastName: capitalizeFirst(lastName),
      register: true,
      name: name,
      picture: imageUrl ?? globalUser.picture,
    );
    firestoreUpdateDoc(collection,
        docName: docName, values: globalUser.toJson());
  }

  // Future<void> updateUser(UserModel user) async {
  //   await localDB.updateUser(user: user);
  //   final phoneExist =
  //       await firestoreCheckIfDocExists(collection, user.email);
  //   if (phoneExist) {
  //     firestoreUpdateDoc(collection,
  //         docName: user.email, values: user.toJson());
  //   }
  // }

  // Future<void> deleteUser({required String email}) async {
  //   await localDB.deleteUser();
  //   final phoneExist = await firestoreCheckIfDocExists(collection, email);
  //   if (phoneExist) {
  //     firestoreDeleteDoc(collection, docName: email);
  //   }
  // }

  // Future<void> newPartnerUser(UserModel user) async {
  //   await localDB.updatePartner(user: user);
  //   final phoneExist =
  //       await firestoreCheckIfDocExists(collection, user.email);
  //   if (!phoneExist) {
  //     firestoreNewDoc(collection,
  //         docName: user.email, values: user.toJson());
  //   }
  // }

  // Future<void> updatePartnerUser(UserModel user) async {
  //   await localDB.updatePartner(user: user);
  //   final phoneExist =
  //       await firestoreCheckIfDocExists(collection, user.email);
  //   if (phoneExist) {
  //     firestoreUpdateDoc(collection,
  //         docName: user.email, values: user.toJson());
  //   }
  // }

  String capitalizeFirst(String input) {
    if (input.isEmpty) return input;
    return input[0].toUpperCase() + input.substring(1).toLowerCase();
  }
}
