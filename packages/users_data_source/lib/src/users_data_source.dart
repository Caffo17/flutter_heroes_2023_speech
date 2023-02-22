// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:ntt_device_models/ntt_device_models.dart';

/// {@template users_data_source}
/// A generic interface for managing users authentication.
/// {@endtemplate}
abstract class UsersDataSource {
  /// {@macro users_data_source}
  const UsersDataSource();

  /// Execute login with credentials.
  Future<UserDto> login(String username, String password);

  Future<bool> addAdmin(String email);

  Future<bool> removeAdmin(String email);

  Future<List<String>> getAdmins();
}
