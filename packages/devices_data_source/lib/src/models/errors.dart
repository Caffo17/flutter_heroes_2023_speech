class DeviceAlreadyExisting extends Error {
  DeviceAlreadyExisting(this.udid);

  final String udid;
}

class DeviceNotExisting extends Error {
  DeviceNotExisting(this.udid);
  final String udid;
}
