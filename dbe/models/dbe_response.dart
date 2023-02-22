import 'dbe_payload.dart';

class DbeResponse<P extends DbePayload> {
  final bool success;
  final String? message;
  final P? payload;

  DbeResponse._({
    required this.success,
    this.payload,
    this.message,
  });

  factory DbeResponse.successful([P? payload]) => DbeResponse._(
        success: true,
        payload: payload,
      );

  factory DbeResponse.error([String? message]) => DbeResponse._(
        success: false,
        message: message,
      );

  Map<String, dynamic> toJson() {
    final map = {
      'success': success,
      'message': message,
      if (payload != null) 'payload': payload?.toJson() else 'payload': null
    };

    map.removeWhere((key, value) => value == null);

    return map;
  }
}
