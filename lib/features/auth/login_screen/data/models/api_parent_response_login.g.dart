// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_parent_response_login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ParentResponseBody _$ParentResponseBodyFromJson(Map<String, dynamic> json) =>
    ParentResponseBody(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      message:
          (json['message'] as List<dynamic>?)?.map((e) => e as String).toList(),
      status: json['status'] as int?,
    );

Map<String, dynamic> _$ParentResponseBodyToJson(ParentResponseBody instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'status': instance.status,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: json['id'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      students: (json['students'] as List<dynamic>?)
          ?.map((e) => Students.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'students': instance.students,
    };

Students _$StudentsFromJson(Map<String, dynamic> json) => Students(
      id: json['id'] as int?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      phone: json['phone'] as String?,
      positivePoint: json['positive_point'] as int?,
      negativePoint: json['negative_point'] as int?,
      totalPoint: json['total_point'] as int?,
      numberOfViolations: json['number_of_violations'] as int?,
      row: json['row'] == null
          ? null
          : RowInfo.fromJson(json['row'] as Map<String, dynamic>),
      room: json['room'] == null
          ? null
          : RowInfo.fromJson(json['room'] as Map<String, dynamic>),
      newNotificationCount: json['new_notification_count'] as int?,
      schoolRank: json['school_rank'] as int?,
      rowRank: json['row_rank'] as int?,
      roomRank: json['room_rank'] as int?,
    );

Map<String, dynamic> _$StudentsToJson(Students instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'phone': instance.phone,
      'positive_point': instance.positivePoint,
      'negative_point': instance.negativePoint,
      'total_point': instance.totalPoint,
      'number_of_violations': instance.numberOfViolations,
      'row': instance.row,
      'room': instance.room,
      'new_notification_count': instance.newNotificationCount,
      'school_rank': instance.schoolRank,
      'row_rank': instance.rowRank,
      'room_rank': instance.roomRank,
    };

RowInfo _$RowInfoFromJson(Map<String, dynamic> json) => RowInfo(
      id: json['id'] as int?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$RowInfoToJson(RowInfo instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
    };
