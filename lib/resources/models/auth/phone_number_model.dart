import 'data.dart';

class PhoneNumberModel {
  int? status;
  String? message;
  Data? data;

  PhoneNumberModel({this.status, this.message, this.data});

  factory PhoneNumberModel.fromJson(Map<String, dynamic> json) =>
      PhoneNumberModel(
        status: json['status'] as int?,
        message: json['message'] as String?,
        data: json['data'] == null
            ? null
            : Data.fromJson(json['data'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'status': status,
        'message': message,
        'data': data?.toJson(),
      };
}
