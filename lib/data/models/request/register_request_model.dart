// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class RegisterRequestModel {
  final String name;
  final String email;
  final String phone;
  final String password;
  RegisterRequestModel({
    required this.name,
    required this.email,
    required this.phone,
    required this.password,
  });

  RegisterRequestModel copyWith({
    String? name,
    String? email,
    String? phone,
    String? password,
  }) {
    return RegisterRequestModel(
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      password: password ?? this.password,
    );
  }

  Map<String, String> toMap() {
    return {
      'name': name,
      'email': email,
      'phone': phone,
      'password': password,
    };
  }

  factory RegisterRequestModel.fromMap(Map<String, dynamic> map) {
    return RegisterRequestModel(
      name: map['name'] as String,
      email: map['email'] as String,
      phone: map['phone'] as String,
      password: map['password'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory RegisterRequestModel.fromJson(String source) =>
      RegisterRequestModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'RegisterRequestModel(name: $name, email: $email, phone: $phone, password: $password)';
  }

  @override
  bool operator ==(covariant RegisterRequestModel other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.email == email &&
        other.phone == phone &&
        other.password == password;
  }

  @override
  int get hashCode {
    return name.hashCode ^ email.hashCode ^ phone.hashCode ^ password.hashCode;
  }
}
