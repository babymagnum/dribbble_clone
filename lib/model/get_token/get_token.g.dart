// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetToken _$GetTokenFromJson(Map<String, dynamic> json) {
  return GetToken(json['access_token'] as String, json['scope'] as String,
      json['token_type'] as String);
}

Map<String, dynamic> _$GetTokenToJson(GetToken instance) => <String, dynamic>{
      'access_token': instance.access_token,
      'token_type': instance.token_type,
      'scope': instance.scope
    };
