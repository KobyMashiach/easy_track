import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

String dateTimeToString(DateTime date) => DateFormat('dd/MM/yyyy').format(date);

DateTime stringToDateTime(String str) => DateFormat('dd/MM/yyyy').parse(str);

Timestamp? dateTimeToTimestamp(DateTime? date) =>
    date != null ? Timestamp.fromDate(date) : null;

DateTime? timestampToDateTime(Timestamp? timestamp) => timestamp?.toDate();

Uint8List stringToUint8List(String str) => Uint8List.fromList(utf8.encode(str));

Future<File?> pickImageImagePicker() async {
  final ImagePicker picker = ImagePicker();
  final XFile? image = await picker.pickImage(source: ImageSource.gallery);

  if (image != null) {
    return File(image.path);
  } else {
    return null;
  }
}
