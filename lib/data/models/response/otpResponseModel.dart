import 'dart:convert';

class OTPResponseModel {
  final String otpCode;
  final String phone;

  OTPResponseModel({required this.otpCode, required this.phone});

  // Membuat objek dari map (dari JSON)
  factory OTPResponseModel.fromMap(Map<String, dynamic> map) {
    return OTPResponseModel(
      otpCode: map['otp_code'] ?? '',
      phone: map['phone'] ?? '',
    );
  }

  // Membuat objek dari string JSON
  factory OTPResponseModel.fromJson(String source) =>
      OTPResponseModel.fromMap(json.decode(source));
}
