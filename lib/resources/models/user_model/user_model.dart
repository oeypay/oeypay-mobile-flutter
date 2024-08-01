import 'user.dart';

class UserModel {
  String? accessToken;
  String? refreshToken;
  User? user;
  static String? token;

  UserModel({this.accessToken, this.refreshToken, this.user});

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        accessToken: json['access_token'] as String?,
        refreshToken: json['refresh_token'] as String?,
        user: json['user'] == null
            ? null
            : User.fromJson(json['user'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'access_token': accessToken,
        'refresh_token': refreshToken,
        'user': user?.toJson(),
      };
}
