part of 'registratrion_bloc.dart';

@freezed
class RegistratrionState with _$RegistratrionState {
  const factory RegistratrionState.initial() = _Initial;
  const factory RegistratrionState.phoneEntered(String phoneNumber) =
      _PhoneEntered;
  const factory RegistratrionState.phoneValidated() = _PhoneValidated;
  const factory RegistratrionState.passwordEntered(String password) =
      _PasswordEntered;
  const factory RegistratrionState.nameEmailEntered(String name, String email) =
      _NameEmailEntered;
  const factory RegistratrionState.registrationCompleted(
      AuthResponseModel response) = _RegistrationCompleted;
}
