import 'package:freezed_annotation/freezed_annotation.dart';
import 'role_enum.dart';

part 'user_dto.freezed.dart';

part 'user_dto.g.dart';

/// User model
@Freezed(toJson: true)
class UserDto with _$UserDto {
  /// Default constructor.
  factory UserDto({
    required int userId,
    required String mail,
    required Role role,
  }) = _UserDto;

  /// Deserialize method.
  factory UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);
}
