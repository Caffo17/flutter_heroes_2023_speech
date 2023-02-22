// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeviceDto _$$_DeviceDtoFromJson(Map<String, dynamic> json) => _$_DeviceDto(
      udid: json['udid'] as String,
      name: json['name'] as String,
      status: $enumDecodeNullable(_$DeviceStatusEnumMap, json['status']) ??
          DeviceStatus.available,
      office: $enumDecode(_$OfficeEnumMap, json['office']),
      accountEmail: json['accountEmail'] as String,
      accountPassword: json['accountPassword'] as String,
      pin: json['pin'] as String?,
      os: $enumDecode(_$OsEnumMap, json['os']),
      osVersion: json['osVersion'] as String,
      reservation: json['reservation'] == null
          ? null
          : ReservationDto.fromJson(
              json['reservation'] as Map<String, dynamic>),
      useHistory: (json['useHistory'] as List<dynamic>?)
              ?.map((e) => ReservationDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_DeviceDtoToJson(_$_DeviceDto instance) =>
    <String, dynamic>{
      'udid': instance.udid,
      'name': instance.name,
      'status': _$DeviceStatusEnumMap[instance.status]!,
      'office': _$OfficeEnumMap[instance.office]!,
      'accountEmail': instance.accountEmail,
      'accountPassword': instance.accountPassword,
      'pin': instance.pin,
      'os': _$OsEnumMap[instance.os]!,
      'osVersion': instance.osVersion,
      'reservation': reservationToJson(instance.reservation),
      'useHistory': useHistoryToJson(instance.useHistory),
    };

const _$DeviceStatusEnumMap = {
  DeviceStatus.available: 'available',
  DeviceStatus.notAvailable: 'notAvailable',
  DeviceStatus.owned: 'owned',
  DeviceStatus.inUse: 'inUse',
};

const _$OfficeEnumMap = {
  Office.milano: 'milano',
  Office.roma: 'roma',
  Office.treviso: 'treviso',
  Office.napoli: 'napoli',
  Office.torino: 'torino',
  Office.cosenza: 'cosenza',
};

const _$OsEnumMap = {
  Os.android: 'android',
  Os.ios: 'ios',
};
