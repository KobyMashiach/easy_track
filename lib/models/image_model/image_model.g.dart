// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImageModelImpl _$$ImageModelImplFromJson(Map<String, dynamic> json) =>
    _$ImageModelImpl(
      imageUrl: json['imageUrl'] as String?,
      date: const DateConverter().fromJson(json['date'] as Timestamp?),
    );

Map<String, dynamic> _$$ImageModelImplToJson(_$ImageModelImpl instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'date': const DateConverter().toJson(instance.date),
    };