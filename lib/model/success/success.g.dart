// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'success.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Success _$SuccessFromJson(Map<String, dynamic> json) {
  return Success(json['status'] as String, json['message'] as String);
}

Map<String, dynamic> _$SuccessToJson(Success instance) =>
    <String, dynamic>{'status': instance.status, 'message': instance.message};
