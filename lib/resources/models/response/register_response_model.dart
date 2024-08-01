import 'dart:convert';

class RegisterResponseModel {
  final String? name;
  final String? phone;
  final dynamic referral;

  RegisterResponseModel({
    this.name,
    this.phone,
    this.referral,
  });

  factory RegisterResponseModel.fromJson(String str) =>
      RegisterResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory RegisterResponseModel.fromMap(Map<String, dynamic> json) =>
      RegisterResponseModel(
        name: json["name"],
        phone: json["phone"],
        referral: json["referral"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "phone": phone,
        "referral": referral,
      };
}
