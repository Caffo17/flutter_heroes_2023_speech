import 'dbe_payload.dart';

class GetAdminsPayload extends DbePayload {
  final List<String> admins;

  const GetAdminsPayload(this.admins);

  @override
  Map<String, dynamic> toJson() {
    return {
      'list': this.admins,
    };
  }
}
