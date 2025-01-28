import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class DateConverter implements JsonConverter<DateTime?, Timestamp?> {
  const DateConverter();

  @override
  DateTime? fromJson(Timestamp? timestamp) {
    return timestamp?.toDate();
  }

  @override
  Timestamp? toJson(DateTime? date) {
    return date != null ? Timestamp.fromDate(date) : null;
  }
}
