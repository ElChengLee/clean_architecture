// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModelBaseResponse<T> _$ModelBaseResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    ModelBaseResponse<T>(
      json['requestId'] as String,
      json['status'] as String,
      json['desc'] as String,
      json['message'] as String,
      fromJsonT(json['articles']),
    );

Map<String, dynamic> _$ModelBaseResponseToJson<T>(
  ModelBaseResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'requestId': instance.requestId,
      'status': instance.status,
      'desc': instance.desc,
      'message': instance.message,
      'articles': toJsonT(instance.articles),
    };
