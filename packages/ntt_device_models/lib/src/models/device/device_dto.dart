import 'package:freezed_annotation/freezed_annotation.dart';
import 'device_status_enum.dart';
import 'office_enum.dart';
import 'os_enum.dart';
import 'reservation_dto.dart';

part 'device_dto.freezed.dart';

part 'device_dto.g.dart';

Map<String, dynamic>? reservationToJson(ReservationDto? v) => v?.toJson();

List<Map<String, dynamic>>? useHistoryToJson(List<ReservationDto> v) =>
    v.map((e) => e.toJson()).toList();

@freezed
class DeviceDto with _$DeviceDto {
  factory DeviceDto({
    required String udid,
    required String name,
    @Default(DeviceStatus.available) DeviceStatus status,
    required Office office,
    required String accountEmail,
    required String accountPassword,
    String? pin,
    required Os os,
    required String osVersion,
    @JsonKey(toJson: reservationToJson) ReservationDto? reservation,
    @JsonKey(toJson: useHistoryToJson) @Default([]) List<ReservationDto> useHistory,
  }) = _DeviceDto;

  factory DeviceDto.fromJson(Map<String, dynamic> json) => _$DeviceDtoFromJson(json);
}
