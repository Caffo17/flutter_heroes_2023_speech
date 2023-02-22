import 'package:commons_ntt_device_dbe/commons_ntt_device_dbe.dart';
import 'package:ntt_device_models/ntt_device_models.dart';

import 'validator_delegate.dart';

class DeviceModelDelegate {
  const DeviceModelDelegate._();

  static const String udidField = 'udid';
  static const String nameField = 'name';
  static const String statusField = 'status';
  static const String officeField = 'office';
  static const String accountEmailField = 'accountEmail';
  static const String accountPasswordField = 'accountPassword';
  static const String osField = 'os';
  static const String osVersionField = 'osVersion';
  static const String pinField = 'pin';

  static List<String> requiredFields = [
    udidField,
    nameField,
    officeField,
    accountEmailField,
    accountPasswordField,
    osField,
    osVersionField,
  ];

  static Map<String, Validator> validators = {
    udidField: (v) =>
        CommonValidatorDelegate.validateType<String>(v, validate: ValidatorDelegate.isUdidValid),
    nameField: (v) => CommonValidatorDelegate.validateType<String>(v, validate: (s) => s != null),
    officeField: (v) =>
        CommonValidatorDelegate.validateType<String>(v, validate: ValidatorDelegate.isOfficeValid),
    accountEmailField: (v) => CommonValidatorDelegate.validateType<String>(
          v,
          validate: CommonValidatorDelegate.isEmailValid,
        ),
    accountPasswordField: (v) =>
        CommonValidatorDelegate.validateType<String>(v, validate: (s) => s != null),
    osField: (v) =>
        CommonValidatorDelegate.validateType<String>(v, validate: ValidatorDelegate.isOsValid),
    osVersionField: (v) =>
        CommonValidatorDelegate.validateType<String>(v, validate: (s) => s != null),
  };

  static Map<String, String> errorMessages = {
    udidField: 'must be composed by 15 digits',
    officeField: 'must be one of ${Office.names}',
    accountEmailField: 'must be a valid email',
    osField: 'must be one of ${Os.names}',
  };

  static List<String> checkMissingFields(Map<String, dynamic> json) {
    final missingKeys = <String>[];

    for (final e in requiredFields) {
      final v = json[e];
      if (v == null) {
        missingKeys.add(e);
      }
    }

    return missingKeys;
  }

  static List<String> checkFields(Map<String, dynamic> json) {
    final notValidKeys = <String>[];

    for (final k in json.entries) {
      final validator = validators[k.key] ?? CommonValidatorDelegate.fallbackValidate;

      if (!validator(k.value)) {
        notValidKeys.add('${k.key} | ${errorMessages[k.key]}');
      }
    }

    return notValidKeys;
  }
}
