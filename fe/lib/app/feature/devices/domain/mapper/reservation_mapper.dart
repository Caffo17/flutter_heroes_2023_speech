import 'package:ntt_cubit_arch/ntt_cubit_arch.dart';
import 'package:ntt_device_models/ntt_device_models.dart';

import '../model/reservation.dart';

class ReservationMapper implements Mapper<Reservation, ReservationDto> {
  const ReservationMapper();

  @override
  Reservation apply(ReservationDto data) {
    if (data.finishedAt != null) {
      return _mapCompletedReservation(data);
    } else {
      return _mapOngoingReservation(data);
    }
  }

  OngoingReservation _mapOngoingReservation(ReservationDto data) {
    return OngoingReservation(
      userId: data.userId,
      userEmail: data.userEmail,
      startedAt: DateTime.parse(data.startedAt),
    );
  }

  CompletedReservation _mapCompletedReservation(ReservationDto data) {
    return CompletedReservation(
      userId: data.userId,
      userEmail: data.userEmail,
      startedAt: DateTime.parse(data.startedAt),
      finishedAt: DateTime.parse(data.finishedAt!),
    );
  }
}
