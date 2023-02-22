class DbeMessages {
  const DbeMessages._();

  static const String notValidBody = 'Missing body or not valid JSON';
  static const String notValidCredentials = 'Credentials not valid';

  static String missingFields(String v) => 'Missing fields $v';

  static String notValidFields(String v) => 'Not valid fields $v';

  static String deviceAlreadyExisting(String udid) => 'Device with UDID = $udid already existing';

  static String deviceNotExisting(String udid) => 'Device with UDID = $udid not existing';

  static String deviceNotReservable(String udid) => 'Device with UDID $udid is not available or it has already a reservation';

  static String deviceNotReleasable(String udid) => 'Device with UDID $udid is being used by a different user or it has not an active reservation';

  static String adminAlreadyExisting(String email) => 'Admin with email = $email already existing';

  static String adminNotExisting(String email) => 'Admin with email = $email not exists';

  static String adminEmailNotValid(String email) => 'Email = $email not valid';
}
