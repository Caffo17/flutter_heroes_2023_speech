import 'package:freezed_annotation/freezed_annotation.dart';

part 'reservation_dto.freezed.dart';

part 'reservation_dto.g.dart';

@freezed
class ReservationDto with _$ReservationDto {
  factory ReservationDto({
    required int userId,
    required String startedAt,
    String? finishedAt,
    required String userEmail,
  }) = _ReservationModel;

  factory ReservationDto.fromJson(Map<String, dynamic> json) => _$ReservationDtoFromJson(json);
}
