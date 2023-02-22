class AdminNotExisting extends Error {
  AdminNotExisting(this.email);

  final String email;
}

class AdminAlreadyExisting extends Error {
  AdminAlreadyExisting(this.email);

  final String email;
}

class AdminEmailNotValid extends Error {
  AdminEmailNotValid(this.email);

  final String email;
}

class WrongAuthentication extends Error {}
