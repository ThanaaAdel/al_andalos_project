

import 'package:json_annotation/json_annotation.dart';

part 'api_error_model.g.dart';
@JsonSerializable()
class ApiErrorModel {
  String? data;
  List<String>? message;
  int? status;

  ApiErrorModel({this.data, this.message, this.status});
factory ApiErrorModel.fromJson(Map<String, dynamic> json) => _$ApiErrorModelFromJson(json);

Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);
}
