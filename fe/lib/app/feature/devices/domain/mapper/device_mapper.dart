// ignore_for_file: avoid_field_initializers_in_const_classes

import 'package:ntt_cubit_arch/ntt_cubit_arch.dart';
import 'package:ntt_device_models/ntt_device_models.dart';

import '../../../../utils/session_manager.dart';
import '../model/device.dart';
import '../model/reservation.dart';
import 'reservation_mapper.dart';

class DeviceMapper implements ReversibleMapper<Device, DeviceDto> {
  const DeviceMapper(this._sessionManager) : _reservationMapper = const ReservationMapper();

  final SessionManager _sessionManager;
  final Mapper<Reservation, ReservationDto> _reservationMapper;

  @override
  Device apply(DeviceDto dto) {
    final ongoingReservation =
        dto.reservation != null ? _reservationMapper.apply(dto.reservation!) : null;
    var useHistory = dto.useHistory.map(_reservationMapper.apply).toList();

    if (ongoingReservation != null) {
      useHistory = [ongoingReservation, ...useHistory];
    }

    return Device(
      udid: dto.udid,
      name: dto.name,
      accountEmail: dto.accountEmail,
      accountPassword: dto.accountPassword,
      osVersion: dto.osVersion,
      status: _convertStatus(dto.status, ongoingReservation),
      location: dto.office,
      osType: dto.os,
      pin: dto.pin,
      reservation: ongoingReservation,
      useHistory: useHistory,
    );
  }

  @override
  DeviceDto reverse(Device model) {
    return DeviceDto(
      udid: model.udid,
      name: model.name,
      accountEmail: model.accountEmail,
      accountPassword: model.accountPassword,
      osVersion: model.osVersion,
      status: model.status,
      office: model.location,
      os: model.osType,
      pin: model.pin,
    );
  }

  DeviceStatus _convertStatus(DeviceStatus v, Reservation? reservation) {
    if (v == DeviceStatus.inUse && reservation != null) {
      return _sessionManager.user?.map(
            logged: (v) => v.userId == reservation.userId ? DeviceStatus.owned : DeviceStatus.inUse,
            notLogged: (_) => DeviceStatus.inUse,
          ) ??
          DeviceStatus.inUse;
    } else {
      return v;
    }
  }
}
