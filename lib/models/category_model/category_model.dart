import 'package:easy_track/models/category_model/category_converters_json.dart';
import 'package:easy_track/models/image_model/image_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    String? title,
    @ImageModelListConverter() List<ImageModel>? images,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}
