part of 'registratrion_bloc.dart';

@freezed
class RegistratrionEvent with _$RegistratrionEvent {
  // const factory RegistratrionEvent.started() = _Started;
  const factory RegistratrionEvent.enterPhone(String phoneNumber) = _EnterPhone;
  const factory RegistratrionEvent.validatePhone() = _ValidatePhone;
  const factory RegistratrionEvent.enterPassword(String password) =
      _EnterPassword;
  const factory RegistratrionEvent.enterNameEmail(String name, String email) =
      _EnterNameEmail;
  const factory RegistratrionEvent.completeRegistration() =
      _CompleteRegistration;
}
