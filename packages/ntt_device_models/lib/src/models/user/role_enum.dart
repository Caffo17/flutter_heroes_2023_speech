/// Type of user.
enum Role {
  /// User with privileges.
  /// As member and can add, modify and delete devices.
  admin,

  /// User without privileges.
  /// Can see devices and book them.
  member;
}
