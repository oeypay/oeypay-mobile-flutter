import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:oepay/resources/models/requests/pin_request_model.dart';
import 'package:oepay/resources/models/response/pin_response_model.dart';

import '../../common/constant/variables.dart';
import '../models/requests/otp_request_model.dart';
import '../models/requests/register_request_model.dart';
import '../models/response/auth_response_model.dart';
import '../models/response/otp_response_model.dart';
import '../models/response/register_response_model.dart';

class Authremotedatasource {
  //registrasi akun
  Future<Either<String, RegisterResponseModel>> register(
      RegisterRequestModel requetModel) async {
    final Map<String, String> headers = {'Content-Type': 'application/json'};

    final url = Uri.parse('${baseUrl}/register');
    final response = await http.post(
      url,
      headers: headers,
      body: requetModel.toJson(),
    );
    if (response.statusCode == 201) {
      return Right(
        RegisterResponseModel.fromJson(response.body),
      );
    } else {
      return Left(response.body);
    }
  }

  Future<Either<String, OTPResponseModel>> sendOTP(
      OTPRequestModel otpRequetModel) async {
    final Map<String, String> headers = {'Content-Type': 'application/json'};

    final url = Uri.parse('${baseUrl}/verify-otp');
    final response = await http.post(
      url,
      headers: headers,
      body: otpRequetModel.toJson(),
    );
    if (response.statusCode == 200) {
      return Right(
        OTPResponseModel.fromJson(response.body),
      );
    } else {
      return Left(response.body);
    }
  }

  Future<Either<String, OTPResponseModel>> verifyOtp(
      OTPRequestModel requestModel) async {
    try {
      final response = await http.post(
        Uri.parse('${baseUrl}/verify-otp'),
        headers: {'Content-Type': 'application/json'},
        body: requestModel.toJson(),
      );

      if (response.statusCode == 200) {
        // final data = jsonDecode(response.body);
        final otpResponse = OTPResponseModel.fromJson(response.body);
        return Right(otpResponse);
      } else {
        return Left(response.body);
      }
    } catch (e) {
      return Left(e.toString());
    }
  }

  Future<Either<String, PinResponseModel>> sendPIN(
      PinRequestModel requetModel) async {
    final Map<String, String> headers = {'Content-Type': 'application/json'};

    final url = Uri.parse('${baseUrl}/users/pin');
    final response = await http.post(
      url,
      headers: headers,
      body: requetModel.toJson(),
    );
    if (response.statusCode == 200) {
      return Right(
        PinResponseModel.fromJson(response.body),
      );
    } else {
      return Left(response.body);
    }
  }

  //chek nomor telpon
  // Future<Either<String, bool>> checkPhoneNumber(String phone) async {
  //   // Implementasi logika pengecekan nomor telepon
  //   // Contoh:
  //   final response = await http.get(
  //     Uri.parse('${baseUrl}v1/register'),
  //   );

  //   if (response.statusCode == 200) {
  //     final data = jsonDecode(response.body);
  //     return Right(data['isRegistered']);
  //   } else {
  //     return Left('Error checking phone number');
  //   }
  // }

  //login akun
  // Future<Either<String, AuthResponseModel>> login(
  //   String phone,
  //   String pin,
  // ) async {
  //   final header = {
  //     'Content-Type': 'application/json',
  //   };
  //   final url = Uri.parse('${baseUrl}v1/login');
  //   final response = await http.post(
  //     url,
  //     headers: header,
  //     body: jsonEncode(
  //       {'phone': phone, 'pin': pin},
  //     ),
  //   );
  //   if (response.statusCode == 200) {
  //     return Right(AuthResponseModel.fromJson(response.body));
  //   } else {
  //     return Left(response.body);
  //   }
  // }

  // Future<Either<String, String>> logout() async {
  //   final authData = await Authlocaldatasource().getAuthData();
  //   final header = {
  //     'Content-Type': 'application/json',
  //     'Authorization': 'Bearer ${authData!.data!.token}'
  //   };

  //   final url = Uri.parse(uri)
  // }
}
