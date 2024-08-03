import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:oepay/common/constant/variables.dart';
import 'package:oepay/resources/models/menu/categories_model/categories_model.dart';
import 'package:oepay/resources/models/menu/product_model/product_model.dart';
import 'package:oepay/resources/models/user_model/user_model.dart';
import 'package:oepay/resources/provider/api_return_value.dart';

class ApiMenuProvider {
  static Future<ApiReturnValue<List<CategoriesModel>>> getAllMenus(
      {String? bulan, String? skip}) async {
    try {
      debugPrint("getAllMenus");

      var response = await Dio().get('${baseUrl}v1/categories',
          options: Options(
            headers: {"Authorization": "Bearer ${UserModel.token}"},
          ));

      if (kDebugMode) {
        print(response.data['data']);
      }
      List<CategoriesModel> value = (response.data['data'] as Iterable)
          .map((e) => CategoriesModel.fromJson(e))
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

  static Future<ApiReturnValue<List<ProductModel>>> getProduct(
      {String? brand, String? category}) async {
    try {
      debugPrint("getProduct");

      var response = await Dio().get('${baseUrl}v1/product',
          queryParameters: {
            "category": category,
            "brand": brand,
          },
          options: Options(
            headers: {"Authorization": "Bearer ${UserModel.token}"},
          ));

      if (kDebugMode) {
        print(response.data['data']);
      }
      List<ProductModel> value = (response.data['data'] as Iterable)
          .map((e) => ProductModel.fromJson(e))
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
