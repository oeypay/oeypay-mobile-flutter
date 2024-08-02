import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:oepay/common/constant/variables.dart';
import 'package:oepay/resources/models/auth/phone_number_model.dart';
import 'package:oepay/resources/models/user_model/user_model.dart';
import 'package:oepay/resources/provider/api_return_value.dart';
import 'package:oepay/resources/provider/storage_util.dart';

class ApiAuthProvider {
  static Future<ApiReturnValue<UserModel>> signUp(
      {String? name, String? phone, String? referral}) async {
    try {
      debugPrint('signUp');
      var response = await Dio().post('${baseUrl}v1/register',
          data: {
            'name': name,
            'phone': phone,
            'referral': referral,
          },
          options: Options(
            headers: {"Authorization": "Bearer ${UserModel.token}"},
          ));

      // UserModel value = UserModel.fromJson(response.data['data']['user']);
      // UserModel.token = response.data['data']['access_token'];
      // debugPrint(response.data['data']['access_token']);
      if (kDebugMode) {
        print(response.data['data']);
      }

      // save token
      // await StorageCore().saveObject({
      //   "value": response.data['data']['access_token'],
      // }, 'token');
      // return ApiReturnValue(value: value);
      return ApiReturnValue(success: response.data['meta']['message']);
    } catch (e) {
      if (kDebugMode) print(e.toString());

      if (e is DioException && e.response?.statusCode == 400) {
        return ApiReturnValue(message: e.response!.data['meta']['message']);
      }
      return ApiReturnValue(message: 'Please try again');
    }
  }

  static Future<ApiReturnValue<UserModel>> signIn(
      {String? pin, String? phone}) async {
    try {
      debugPrint('signIn $pin $phone');
      var response = await Dio().post(
        '${baseUrl}v1/login',
        data: {
          'pin': pin,
          'phone': phone,
        },
      );

      UserModel value = UserModel.fromJson(response.data['data']['user']);
      UserModel.token = response.data['data']['access_token'];
      debugPrint(response.data['data']['access_token']);

      // save token
      await StorageCore().saveObject({
        "value": response.data['data']['access_token'],
      }, 'token');
      return ApiReturnValue(value: value);
    } catch (e) {
      if (kDebugMode) print(e.toString());

      if (e is DioException && e.response?.statusCode == 400) {
        return ApiReturnValue(message: e.response!.data['meta']['message']);
      }
      return ApiReturnValue(message: 'Please try again');
    }
  }

  static Future<ApiReturnValue<PhoneNumberModel>> checkPhoneNumber({
    String? phoneNumber,
  }) async {
    try {
      debugPrint("checkPhoneNumber");

      var response = await Dio().get(
        '${baseUrl}v1/check-phone/$phoneNumber',
      );
      if (kDebugMode) {
        print(response.data);
      }
      debugPrint("Response Code: ${response.statusCode}");
      debugPrint("Response Data: ${response.data}");

      if (response.statusCode != 200) {
        return ApiReturnValue(message: response.data['message']);
      }

      PhoneNumberModel value = PhoneNumberModel.fromJson(response.data);
      return ApiReturnValue(value: value);
    } catch (e) {
      if (kDebugMode) print(e.toString());

      if (e is DioException && e.response?.statusCode == 400) {
        return ApiReturnValue(message: e.response!.data['message']);
      }
      return ApiReturnValue(message: 'Please try again');
    }
  }

  static Future<ApiReturnValue> resendOtp({
    String? phoneNumber,
  }) async {
    try {
      debugPrint("resendOtp");

      var response = await Dio().post(
        '${baseUrl}v1/resend-otp',
        data: {
          'otp_code': '123456',
          'phone': phoneNumber,
        },
      );
      if (kDebugMode) {
        print(response.data);
      }
      debugPrint("Response Code: ${response.statusCode}");
      debugPrint("Response Data: ${response.data}");

      if (response.statusCode != 200) {
        return ApiReturnValue(message: response.data['message']);
      }

      PhoneNumberModel value = PhoneNumberModel.fromJson(response.data);
      return ApiReturnValue(value: value);
    } catch (e) {
      if (kDebugMode) print(e.toString());

      if (e is DioException && e.response?.statusCode == 400) {
        return ApiReturnValue(message: e.response!.data['message']);
      }
      return ApiReturnValue(message: 'Please try again');
    }
  }

  static Future<ApiReturnValue> verifyOtp({
    String? phoneNumber,
    String? otpCode,
  }) async {
    try {
      debugPrint("resendOtp");

      var response = await Dio().post(
        '${baseUrl}v1/verify-otp',
        data: {
          'otp_code': otpCode,
          'phone': phoneNumber,
        },
      );
      if (kDebugMode) {
        print(response.data);
      }
      debugPrint("Response Code: ${response.statusCode}");
      debugPrint("Response Data: ${response.data}");

      if (response.statusCode != 200) {
        return ApiReturnValue(message: response.data['message']);
      }

      PhoneNumberModel value = PhoneNumberModel.fromJson(response.data);
      return ApiReturnValue(value: value);
    } catch (e) {
      if (kDebugMode) print(e.toString());

      if (e is DioException && e.response?.statusCode == 400) {
        return ApiReturnValue(message: e.response!.data['message']);
      }
      return ApiReturnValue(message: 'Please try again');
    }
  }

  static Future<ApiReturnValue> sendPin({
    String? phoneNumber,
    String? pin,
  }) async {
    try {
      debugPrint("resendOtp");

      var response = await Dio().put(
        '${baseUrl}v1/users/pin',
        data: {
          'pin': pin,
          'phone': phoneNumber,
        },
      );
      if (kDebugMode) {
        print(response.data);
      }
      debugPrint("Response Code: ${response.statusCode}");
      debugPrint("Response Data: ${response.data}");

      if (response.statusCode != 200) {
        return ApiReturnValue(message: response.data['message']);
      }

      PhoneNumberModel value = PhoneNumberModel.fromJson(response.data);
      return ApiReturnValue(value: value);
    } catch (e) {
      if (kDebugMode) print(e.toString());

      if (e is DioException && e.response?.statusCode == 400) {
        return ApiReturnValue(message: e.response!.data['message']);
      }
      return ApiReturnValue(message: 'Please try again');
    }
  }
}
