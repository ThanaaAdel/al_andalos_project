import 'package:json_annotation/json_annotation.dart';

part 'api_response.g.dart';
@JsonSerializable()
class ParentRequestBody {
  Data? data;
  List<String>? message;
  int? status;

  ParentRequestBody({this.data, this.message, this.status});
  factory ParentRequestBody.fromJson(Map<String, dynamic> json) => _$ParentRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$ParentRequestBodyToJson(this);
}

class Data {
  int? id;
  String? name;
  String? email;
  String? phone;
  List<Students>? students;

  Data({this.id, this.name, this.email, this.phone, this.students});
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

class Students {
  int? id;
  String? name;
  String? image;
  String? phone;
  int? positivePoint;
  int? negativePoint;
  int? totalPoint;
  int? numberOfViolations;
  Row? row;
  Row? room;
  int? newNotificationCount;
  int? schoolRank;
  int? rowRank;
  int? roomRank;

  Students(
      {this.id,
        this.name,
        this.image,
        this.phone,
        this.positivePoint,
        this.negativePoint,
        this.totalPoint,
        this.numberOfViolations,
        this.row,
        this.room,
        this.newNotificationCount,
        this.schoolRank,
        this.rowRank,
        this.roomRank});
  factory Students.fromJson(Map<String, dynamic> json) => _$StudentsFromJson(json);

  Map<String, dynamic> toJson() => _$StudentsToJson(this);

}

class Row {
  int? id;
  String? title;

  Row({this.id, this.title});
  factory ParentRequestBody.fromJson(Map<String, dynamic> json) => _$ParentRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$ParentRequestBodyToJson(this);
}