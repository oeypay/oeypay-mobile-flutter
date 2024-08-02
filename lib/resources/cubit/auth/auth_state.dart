part of 'auth_cubit.dart';

class AuthState extends Equatable {
  final PhoneNumberModel? phoneNumberModel;
  final UserModel? userModel;
  final String? message;
  final BlocConnectionStatus status, statusAction;
  const AuthState({
    required this.status,
    required this.statusAction,
    this.message,
    this.userModel,
    this.phoneNumberModel,
  });

  AuthState copyWith({
    String? message,
    BlocConnectionStatus? status,
    BlocConnectionStatus? statusAction,
    PhoneNumberModel? phoneNumberModel,
    UserModel? userModel,
  }) {
    return AuthState(
      status: status ?? this.status,
      message: message ?? this.message,
      statusAction: statusAction ?? this.statusAction,
      phoneNumberModel: phoneNumberModel ?? this.phoneNumberModel,
      userModel: userModel ?? this.userModel,
    );
  }

  @override
  List<Object?> get props => [
        message,
        status,
        phoneNumberModel,
        statusAction,
        userModel,
      ];
}
