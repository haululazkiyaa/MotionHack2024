class UserModel {
  String? uid;
  final String name;
  final String email;

  UserModel({
    this.uid,
    required this.name,
    required this.email,
  });

  toJson() {
    return {
      "uid": uid,
      "name": name,
      "email": email,
    };
  }
}
