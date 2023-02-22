import 'package:ntt_cubit_arch/ntt_cubit_arch.dart';

import '../../data/entities/user_dto.dart';
import '../model/user.dart';

class UserMapper implements Mapper<User, UserDto> {
  @override
  User apply(UserDto data) {
    return User.logged(
      userId: data.userId,
      role: data.role,
      email: data.email,
    );
  }
}
