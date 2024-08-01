part of 'auth_cubit.dart';

class AuthState extends Equatable {
  final PhoneNumberModel? phoneNumberModel;

  final String? message;
  final BlocConnectionStatus status, statusAction;
  const AuthState({
    required this.status,
    required this.statusAction,
    this.message,
    this.phoneNumberModel,
  });

  AuthState copyWith({
    String? message,
    BlocConnectionStatus? status,
    statusAction,
    PhoneNumberModel? phoneNumberModel,
  }) {
    return AuthState(
      status: status ?? this.status,
      message: message ?? this.message,
      statusAction: statusAction ?? this.statusAction,
      phoneNumberModel: phoneNumberModel ?? this.phoneNumberModel,
    );
  }

  @override
  List<Object?> get props => [
        message,
        status,
        phoneNumberModel,
        statusAction,
      ];
}
