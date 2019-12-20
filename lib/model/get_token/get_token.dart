import 'package:json_annotation/json_annotation.dart';

part 'get_token.g.dart';

@JsonSerializable()
class GetToken {

  GetToken(this.access_token, this.scope, this.token_type);

  String access_token;
  String token_type;
  String scope;

  factory GetToken.fromJson(Map<String, dynamic> json) => _$GetTokenFromJson(json);
  Map<String, dynamic> toJson() => _$GetTokenToJson(this);

}