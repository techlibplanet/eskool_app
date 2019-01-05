class UserModel {
  String _username;
  String _password;

  UserModel(this._username, this._password);

  String get username => _username;

  String get password => _password;

  set username(String username) {
      this._username = username;

  }

  set password(String password) {
      this._password = password;
  }

  // Convert a UserModel object into a Map object
  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map['username'] = _username;
    map['password'] = _password;
    return map;
  }

  // Extract a Note object from a Map object
  UserModel.fromMapObject(Map<String, dynamic> map) {
    this._username = map['username'];
    this._password = map['password'];
  }
}
