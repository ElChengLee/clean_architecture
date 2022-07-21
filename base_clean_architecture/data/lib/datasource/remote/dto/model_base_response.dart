import 'package:json_annotation/json_annotation.dart';

part 'model_base_response.g.dart';

@JsonSerializable(explicitToJson: true, genericArgumentFactories: true)
class ModelBaseResponse<T> {
  final String requestId;
  final String status;
  final String desc;
  final String message;
  final T data;

  ModelBaseResponse(this.requestId, this.status, this.desc, this.message, this.data);

  factory ModelBaseResponse.fromJson(
      Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$ModelBaseResponseFromJson<T>(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T) toJsonT) =>
      _$ModelBaseResponseToJson<T>(this, toJsonT);
}