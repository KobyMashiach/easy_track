import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_track/models/image_model/image_converters_json.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_model.freezed.dart';
part 'image_model.g.dart';

@freezed
class ImageModel with _$ImageModel {
  const factory ImageModel({
    String? imageUrl,
    @DateConverter() DateTime? date,
  }) = _ImageModel;

  factory ImageModel.fromJson(Map<String, dynamic> json) =>
      _$ImageModelFromJson(json);
}
