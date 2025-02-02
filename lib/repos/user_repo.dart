// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:easy_track/core/global_vars.dart';
// import 'package:easy_track/services/firebase/firestore_data.dart';

// class UserRepo {
//   UserRepo();
//   final collection = FirebaseFirestore.instance.collection('user');

//   Future<bool> checkIfHaveDetails({required String email}) async {
//     final userExist =
//         await firestoreCheckIfDocExists(collection, email);
//     return userExist;
//   }

//   Future<dynamic> firstRegister(
//       {required String email, required String password}) async {
//     globalUser = globalUser.copyWith(
//         email: email, password: password, role: RoleModel.owner);
//     firestoreNewDoc(collection,
//         docName: email, values: globalUser.toJson());
//   }

//   Future<void> updateUser(UserModel user) async {
//     await localDB.updateUser(user: user);
//     final phoneExist =
//         await firestoreCheckIfDocExists(collection, user.email);
//     if (phoneExist) {
//       firestoreUpdateDoc(collection,
//           docName: user.email, values: user.toJson());
//     }
//   }

//   Future<void> deleteUser({required String email}) async {
//     await localDB.deleteUser();
//     final phoneExist = await firestoreCheckIfDocExists(collection, email);
//     if (phoneExist) {
//       firestoreDeleteDoc(collection, docName: email);
//     }
//   }

//   Future<void> newPartnerUser(UserModel user) async {
//     await localDB.updatePartner(user: user);
//     final phoneExist =
//         await firestoreCheckIfDocExists(collection, user.email);
//     if (!phoneExist) {
//       firestoreNewDoc(collection,
//           docName: user.email, values: user.toJson());
//     }
//   }

//   Future<void> updatePartnerUser(UserModel user) async {
//     await localDB.updatePartner(user: user);
//     final phoneExist =
//         await firestoreCheckIfDocExists(collection, user.email);
//     if (phoneExist) {
//       firestoreUpdateDoc(collection,
//           docName: user.email, values: user.toJson());
//     }
//   }
// }
