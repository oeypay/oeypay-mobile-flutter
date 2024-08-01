import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:oepay/common/constant/variables.dart';
import 'package:oepay/resources/models/auth/phone_number_model.dart';
import 'package:oepay/resources/models/user_model/user_model.dart';
import 'package:oepay/resources/provider/api_return_value.dart';
import 'package:oepay/resources/provider/storage_util.dart';

class ApiAuthProvider {
  // static Future<ApiReturnValue<User>> signIn(
  //     {String? email, String? password}) async {
  //   try {
  //     debugPrint("signIn");

  //     var response = await Dio().post('${baseUrl}sign-in',
  //         data: {'email': email, 'password': password, 'fcm_token': fcmToken});

  //     if (kDebugMode) {
  //       print(response.data);
  //     }
  //     if (response.statusCode != 200) {
  //       return ApiReturnValue(message: response.data['message']);
  //     }

  //     User value = User.fromJson(response.data['data']['user']);
  //     User.token = response.data['data']['access_token'];
  //     debugPrint(response.data['data']['access_token']);

  //     // save token
  //     await StorageCore().saveObject({
  //       "value": response.data['data']['access_token'],
  //     }, 'token');
  //     return ApiReturnValue(value: value);
  //   } catch (e) {
  //     if (kDebugMode) print(e.toString());

  //     if (e is DioException && e.response?.statusCode == 400) {
  //       return ApiReturnValue(message: e.response!.data['meta']['message']);
  //     }
  //     return ApiReturnValue(message: 'Please try again');
  //   }
  // }

  static Future<ApiReturnValue<UserModel>> signUp(
      {String? name, String? phone, String? referral}) async {
    try {
      debugPrint('signUp');
      var response = await Dio().post(
        '${baseUrl}v1/register',
        data: {
          'name': name,
          'phone': phone,
          'referral': referral,
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
}
