import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:oepay/common/constant/variables.dart';
import 'package:oepay/resources/models/menu/menu_pages/pages_model.dart';
import 'package:oepay/resources/models/user_model/user_model.dart';
import 'package:oepay/resources/provider/api_return_value.dart';

class ApiPagesProvider {
  static Future<ApiReturnValue<List<PagesModel>>> getProduct(
      {String? categoryId}) async {
    try {
      debugPrint("getPages");

      var response = await Dio().get(
        '${baseUrl}v1/pages/cat/$categoryId',
        // queryParameters: {
        //   "category_id": categoryId,
        //   // "brand": brand,
        // },
        options: Options(
          headers: {"Authorization": "Bearer ${UserModel.token}"},
        ),
      );

      if (kDebugMode) {
        print(response.data['data']);
      }
      List<PagesModel> value = (response.data['data'] as Iterable)
          .map((e) => PagesModel.fromJson(e))
          .toList();

      return ApiReturnValue(value: value);
    } catch (e) {
      if (kDebugMode) print(e.toString());

      if (e is DioException && e.response?.statusCode == 400) {
        return ApiReturnValue(message: e.response!.data['meta']['message']);
      }
      return ApiReturnValue(message: 'Please try again');
    }
  }
}
