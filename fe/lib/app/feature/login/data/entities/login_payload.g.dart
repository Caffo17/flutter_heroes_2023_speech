// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginPayload _$$_LoginPayloadFromJson(Map<String, dynamic> json) =>
    _$_LoginPayload(
      user: UserDto.fromJson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String,
    );

Map<String, dynamic> _$$_LoginPayloadToJson(_$_LoginPayload instance) =>
    <String, dynamic>{
      'user': instance.user,
      'token': instance.token,
    };
