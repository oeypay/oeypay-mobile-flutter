import 'dart:convert';

class PinResponseModel {
  final int status;
  final String message;

  PinResponseModel({
    required this.status,
    required this.message,
  });

  // Fungsi untuk membuat objek dari Map
  factory PinResponseModel.fromMap(Map<String, dynamic> map) {
    return PinResponseModel(
      status: map['status'] ?? 0,
      message: map['message'] ?? '',
    );
  }

  factory PinResponseModel.fromJson(String source) =>
      PinResponseModel.fromMap(json.decode(source));
}
