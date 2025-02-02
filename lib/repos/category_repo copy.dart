// import 'package:cloud_firestore/cloud_firestore.dart';

// class CategoryRepo {
//   CategoryRepo();
//   final collection = FirebaseFirestore.instance.collection('category');

//   Future<bool> checkIfHaveDetails({required String phoneNumber}) async {
//     final categoryExist =
//         await firestoreCheckIfDocExists(collection, phoneNumber);
//     return categoryExist;
//   }

//   Future<dynamic> firstRegister(
//       {required String phoneNumber, required String password}) async {
//     globalUser = globalUser.copyWith(
//         phoneNumber: phoneNumber, password: password, role: RoleModel.owner);
//     localDB.addNewCategory(category: globalUser);
//     firestoreNewDoc(collection,
//         docName: phoneNumber, values: globalUser.toJson());
//   }

//   Future<void> updateCategory(CategoryModel category) async {
//     await localDB.updateCategory(category: category);
//     final phoneExist =
//         await firestoreCheckIfDocExists(collection, category.phoneNumber);
//     if (phoneExist) {
//       firestoreUpdateDoc(collection,
//           docName: category.phoneNumber, values: category.toJson());
//     }
//   }

//   Future<void> deleteCategory({required String phoneNumber}) async {
//     await localDB.deleteCategory();
//     final phoneExist = await firestoreCheckIfDocExists(collection, phoneNumber);
//     if (phoneExist) {
//       firestoreDeleteDoc(collection, docName: phoneNumber);
//     }
//   }

//   Future<void> newPartnerCategory(CategoryModel category) async {
//     await localDB.updatePartner(category: category);
//     final phoneExist =
//         await firestoreCheckIfDocExists(collection, category.phoneNumber);
//     if (!phoneExist) {
//       firestoreNewDoc(collection,
//           docName: category.phoneNumber, values: category.toJson());
//     }
//   }

//   Future<void> updatePartnerCategory(CategoryModel category) async {
//     await localDB.updatePartner(category: category);
//     final phoneExist =
//         await firestoreCheckIfDocExists(collection, category.phoneNumber);
//     if (phoneExist) {
//       firestoreUpdateDoc(collection,
//           docName: category.phoneNumber, values: category.toJson());
//     }
//   }
// }
