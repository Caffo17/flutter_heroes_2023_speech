// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReservationModel _$$_ReservationModelFromJson(Map<String, dynamic> json) =>
    _$_ReservationModel(
      userId: json['userId'] as int,
      startedAt: json['startedAt'] as String,
      finishedAt: json['finishedAt'] as String?,
      userEmail: json['userEmail'] as String,
    );

Map<String, dynamic> _$$_ReservationModelToJson(_$_ReservationModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'startedAt': instance.startedAt,
      'finishedAt': instance.finishedAt,
      'userEmail': instance.userEmail,
    };
