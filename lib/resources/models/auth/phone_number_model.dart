class PhoneNumberModel {
  final int status;
  final String message;

  PhoneNumberModel({required this.status, required this.message});

  factory PhoneNumberModel.fromJson(Map<String, dynamic> json) {
    return PhoneNumberModel(
      status: json['status'],
      message: json['message'],
    );
  }
}
