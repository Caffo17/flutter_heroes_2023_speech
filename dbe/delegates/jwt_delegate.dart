import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:users_data_source/users_data_source.dart';

// Create a json web token
class JwtDelegate {
  static const String _secretKey = 'piroppi';
  static const String _issuer = 'nttdata.devices.dbe';

  static String clearToken(String token) {
    var v = token;
    if (v.contains('Bearer')) {
      v = token.replaceFirst('Bearer', '');
    }

    return v.trim();
  }

  static String generate(UserDto model) {
    final jwt = JWT(
      {
        'userId': model.userId,
        'email': model.mail,
        'role': model.role.name,
      },
      issuer: _issuer,
    );

    final token = jwt.sign(SecretKey(_secretKey));

    return token;
  }

  static bool validate(String token) {
    try {
      JWT.verify(
        clearToken(token),
        SecretKey(_secretKey),
        issuer: _issuer,
      );

      return true;
    } catch (e) {
      return false;
    }
  }

  static Map<String, dynamic> getPayload(String token) {
    try {
      final jwt = JWT.verify(
        clearToken(token),
        SecretKey(_secretKey),
        issuer: _issuer,
      );

      return jwt.payload as Map<String, dynamic>;
    } catch (e) {
      return {};
    }
  }

  static bool isUserAdmin(String token) {
    final payload = getPayload(token);
    return payload['role'] == 'admin';
  }
}
