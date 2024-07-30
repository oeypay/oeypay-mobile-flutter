import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:oepay/common/constant/variables.dart';
import 'package:oepay/data/models/request/register_request_model.dart';
import 'package:oepay/data/models/responses/auth_responses_model.dart';

class AuthRemotedDatasources {
  Future<Either<String, AuthResponseModel>> register(
      RegisterRequestModel data) async {
    final headers = {'Accept': 'application/json'};
    final response = await http.post(
      Uri.parse('${Variables.baseUrl}/register'),
      body: data.toJson(),
      headers: headers,
    );
    if (response.statusCode == 201) {
      return right(
        AuthResponseModel.fromJson(response.body),
      );
    } else {
      return left('Server Error');
    }
  }
}
