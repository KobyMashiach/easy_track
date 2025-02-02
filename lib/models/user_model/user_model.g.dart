// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      firstName: json['given_name'] as String?,
      lastName: json['family_name'] as String?,
      picture: json['picture'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String,
      register: json['register'] as bool? ?? false,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'given_name': instance.firstName,
      'family_name': instance.lastName,
      'picture': instance.picture,
      'name': instance.name,
      'email': instance.email,
      'register': instance.register,
    };
