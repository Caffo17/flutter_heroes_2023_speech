// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_devices_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetDevicesPayload _$$_GetDevicesPayloadFromJson(Map<String, dynamic> json) =>
    _$_GetDevicesPayload(
      devices: (json['list'] as List<dynamic>?)
              ?.map((e) => DeviceDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_GetDevicesPayloadToJson(
        _$_GetDevicesPayload instance) =>
    <String, dynamic>{
      'list': instance.devices,
    };
