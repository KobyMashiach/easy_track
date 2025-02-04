import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:easy_track/core/global_vars.dart';
import 'package:easy_track/i18n/strings.g.dart';
import 'package:easy_track/models/category_model/category_model.dart';
import 'package:easy_track/services/firebase/firestore_data.dart';

class CategoryRepo {
  CategoryRepo();
  final collection = FirebaseFirestore.instance.collection(globalUser.email);
  final String docName = 'categories';

  // Future<bool> checkIfHaveDetails() async {
  //   final collectionExist =
  //       await firestoreCheckIfCollectionExists(globalUser.email);
  //   final docExist =
  //       await firestoreCheckIfDocExists(collection, docName);
  //   if (collectionExist && docExist) {
  //     final user = await firestoreGetDocValues(collection, docName);
  //     if (user['register'] == true) {
  //       globalUser = globalUser.copyWith(
  //         firstName: user['firstName'],
  //         lastName: user['lastName'],
  //         picture: user['picture'],
  //         name: user['name'],
  //         register: user['register'],
  //       );
  //     }
  //     log(user.toString());
  //     return true;
  //   }
  //   return false;
  // }

  Future<String> addCategory(CategoryModel category) async {
    try {
      final categories = await firestoreGetDocValues(collection, docName);
      if (categories.keys.any((name) => name == category.title)) {
        return t.category_exist;
      } else {
        firestoreUpdateDoc(collection,
            docName: docName, values: {category.title!: category.toJson()});
        return t.category_added;
      }
    } catch (e) {
      log(e.toString());
      return t.error_occurred;
    }
  }

  Future<Either<Map<String, CategoryModel>, String>> getCategories() async {
    try {
      final categoriesJson = await firestoreGetDocValues(collection, docName);
      Map<String, CategoryModel> categories = categoriesJson.map(
        (key, value) => MapEntry(key, CategoryModel.fromJson(value)),
      );
      return Left(categories);
    } catch (e) {
      log(e.toString());
      return Right(t.error_occurred);
    }
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
