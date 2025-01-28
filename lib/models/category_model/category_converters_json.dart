import 'package:easy_track/models/image_model/image_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class ImageModelListConverter
    implements JsonConverter<List<ImageModel>?, List<dynamic>?> {
  const ImageModelListConverter();

  @override
  List<ImageModel>? fromJson(List<dynamic>? jsonList) {
    if (jsonList == null) return null;
    return jsonList
        .map((json) => ImageModel.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  @override
  List<dynamic>? toJson(List<ImageModel>? imageModels) {
    if (imageModels == null) return null;
    return imageModels.map((imageModel) => imageModel.toJson()).toList();
  }
}
