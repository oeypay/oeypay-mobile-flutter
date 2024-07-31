// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class RegisterRequestModel {
  final String? name;
  final String? phone;
  final String? referral;

  RegisterRequestModel({
    this.name,
    this.phone,
    this.referral,
  });

  RegisterRequestModel copyWith({
    String? name,
    String? phone,
    String? referral,
  }) {
    return RegisterRequestModel(
      name: name ?? this.name,
      phone: phone ?? this.phone,
      referral: referral ?? this.referral,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'phone': phone,
      'referral': referral,
    };
  }

  factory RegisterRequestModel.fromMap(Map<String, dynamic> map) {
    return RegisterRequestModel(
      name: map['name'] != null ? map['name'] as String : null,
      phone: map['phone'] != null ? map['phone'] as String : null,
      referral: map['referral'] != null ? map['referral'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory RegisterRequestModel.fromJson(String source) =>
      RegisterRequestModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'RegisterRequestModel(name: $name, phone: $phone, referral: $referral)';

  @override
  bool operator ==(covariant RegisterRequestModel other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.phone == phone &&
        other.referral == referral;
  }

  @override
  int get hashCode => name.hashCode ^ phone.hashCode ^ referral.hashCode;
}
