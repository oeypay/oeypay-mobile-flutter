import 'dart:convert';

class OTPRequestModel {
  final String phone;
  final String? kodeOtp;

  OTPRequestModel({required this.phone, this.kodeOtp});

  // Mengonversi objek ke dalam map yang akan dikirim sebagai JSON
  Map<String, dynamic> toMap() {
    return {
      'phone': phone,
      'otp_code': kodeOtp,
    };
  }

  // Mengonversi objek ke dalam format JSON
  String toJson() => json.encode(toMap());
}
