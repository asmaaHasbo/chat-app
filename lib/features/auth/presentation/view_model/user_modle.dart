class UserModule {
  String name;
  String phone;
  String email;

  UserModule({required this.name, required this.phone, required this.email});

  factory UserModule.fromJson(json) {
    return UserModule(
      name: json['name'],
      phone: json['phone'],
      email: json['email'],
    );
  }
}
