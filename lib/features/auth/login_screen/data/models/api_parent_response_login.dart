import 'package:json_annotation/json_annotation.dart';

part 'api_parent_response_login.g.dart';
@JsonSerializable()
class ParentResponseBody {
  Data? data;
  List<String>? message;
  int? status;

  ParentResponseBody({this.data, this.message, this.status});
  factory ParentResponseBody.fromJson(Map<String, dynamic> json) => _$ParentResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$ParentResponseBodyToJson(this);
}
@JsonSerializable()
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
@JsonSerializable()
class Students {
  int? id;
  String? name;
  String? image;
  String? phone;
  @JsonKey(name: 'positive_point')
  int? positivePoint;
  @JsonKey(name: 'negative_point')
  int? negativePoint;
  @JsonKey(name: 'total_point')
  int? totalPoint;
  @JsonKey(name: 'number_of_violations')
  int? numberOfViolations;
  RowInfo? row;
  RowInfo? room;
  @JsonKey(name: 'new_notification_count')
  int? newNotificationCount;
  @JsonKey(name: 'school_rank')
  int? schoolRank;
  @JsonKey(name: 'row_rank')
  int? rowRank;
  @JsonKey(name: 'room_rank')
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
@JsonSerializable()
class RowInfo {
  int? id;
  String? title;

  RowInfo({this.id, this.title});
  factory RowInfo.fromJson(Map<String, dynamic> json) => _$RowInfoFromJson(json);

  Map<String, dynamic> toJson() => _$RowInfoToJson(this);
}