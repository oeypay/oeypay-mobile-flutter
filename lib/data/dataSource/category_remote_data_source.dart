import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import '../../common/constant/variables.dart';
import '../models/response/category_response_model.dart';

class Categoryremotedatasource {
  Future<Either<String, CategoryResponseModel>> getAllCategory() async {
    // final Map<String, String> headers = {'Authorization': '••••••'};

    final response =
        await http.get(Uri.parse('${Variables.baseUrl}v1/categories'));

    if (response.statusCode == 200) {
      return Right(
        CategoryResponseModel.fromJson(response.body),
      );
    } else {
      return Left(response.body);
    }
  }
}
