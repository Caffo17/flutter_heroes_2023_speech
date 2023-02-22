// Copyright (c) 2023, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:users_data_source/users_data_source.dart';
import 'package:uuid/uuid.dart';

/// {@template flutter_heroes_users_data_source}
/// An implementation of UsersDataSource for Flutter Heroes event
/// {@endtemplate}
class FlutterHeroesUsersDataSource with MongoDbMixin implements UsersDataSource {
  /// {@macro flutter_heroes_users_data_source}
  FlutterHeroesUsersDataSource(
    String url,
    String collection,
  )   : _users = {},
        _mongoDbUrl = url,
        _adminsCollection = collection;

  final Map<String, UserDto> _users;
  final String _mongoDbUrl;
  final String _adminsCollection;

  Future<bool> _existsAdmin(String email) async {
    final res = await getAdmins();

    return res.any((e) => e.toLowerCase() == email.toLowerCase());
  }

  @override
  Future<List<String>> getAdmins() async {
    final db = await connectToMongoDB(_mongoDbUrl);
    final list = <String>[];

    await db.collection(_adminsCollection).find().forEach((e) {
      final s = e['email'] as String?;
      if (s != null) {
        list.add(s);
      }
    });
    await db.close();

    return list;
  }

  @override
  Future<bool> addAdmin(String email) async {
    if (!CommonValidatorDelegate.isEmailValid(email)) {
      throw AdminEmailNotValid(email);
    }

    final exists = await _existsAdmin(email);

    if (exists) {
      throw AdminAlreadyExisting(email);
    } else {
      final db = await connectToMongoDB(_mongoDbUrl);
      final writeResult = await db.collection(_adminsCollection).insertOne({'email': email});

      if (writeResult.isSuccess) {
        await db.close();
        return true;
      } else {
        throw DbWritingException();
      }
    }
  }

  @override
  Future<UserDto> login(String username, String password) async {
    final user = _users[username];
    if (user != null) {
      return user;
    } else {
      final email = '$username@flutterheroes.com';
      final isAdmin = await _existsAdmin(email);
      final model = UserDto(
        userId: const Uuid().v1().hashCode,
        mail: email,
        role: isAdmin ? Role.admin : Role.member,
      );
      _users[username] = model;

      return model;
    }
  }

  @override
  Future<bool> removeAdmin(String email) async {
    if (!CommonValidatorDelegate.isEmailValid(email)) {
      throw AdminEmailNotValid(email);
    }

    final exists = await _existsAdmin(email);

    if (!exists) {
      throw AdminNotExisting(email);
    } else {
      final db = await connectToMongoDB(_mongoDbUrl);
      final writeResult = await db.collection(_adminsCollection).deleteOne({'email': email});

      if (writeResult.isSuccess) {
        await db.close();
        return true;
      } else {
        throw DbWritingException();
      }
    }
  }
}
