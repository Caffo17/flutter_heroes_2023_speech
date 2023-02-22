import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.g.dart';

part 'user_dto.freezed.dart';

@freezed
class UserDto with _$UserDto {
  factory UserDto({
    required int userId,
    required String role,
    @JsonKey(name: 'mail') required String email,
  }) = _UserDto;

  const UserDto._();

  factory UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);
}
