// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class PinRequestModel {
  final String pin;
  final String phone;
  PinRequestModel({
    required this.pin,
    required this.phone,
  });

  PinRequestModel copyWith({
    String? pin,
    String? phone,
  }) {
    return PinRequestModel(
      pin: pin ?? this.pin,
      phone: phone ?? this.phone,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pin': pin,
      'phone': phone,
    };
  }

  factory PinRequestModel.fromMap(Map<String, dynamic> map) {
    return PinRequestModel(
      pin: map['pin'] as String,
      phone: map['phone'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory PinRequestModel.fromJson(String source) =>
      PinRequestModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'PinRequestModel(pin: $pin, phone: $phone)';

  @override
  bool operator ==(covariant PinRequestModel other) {
    if (identical(this, other)) return true;

    return other.pin == pin && other.phone == phone;
  }

  @override
  int get hashCode => pin.hashCode ^ phone.hashCode;
}
