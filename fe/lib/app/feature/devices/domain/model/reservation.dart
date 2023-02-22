import 'package:freezed_annotation/freezed_annotation.dart';

part 'reservation.freezed.dart';

@freezed
class Reservation with _$Reservation {
  factory Reservation.completed({
    required int userId,
    required String userEmail,
    required DateTime startedAt,
    required DateTime finishedAt,
  }) = CompletedReservation;

  factory Reservation.ongoing({
    required int userId,
    required String userEmail,
    required DateTime startedAt,
  }) = OngoingReservation;
}
