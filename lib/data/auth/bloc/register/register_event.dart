part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.started() = _Started;
  const factory RegisterEvent.register({
    required RegisterRequestModel requestModel,
  }) = _Register;

  const factory RegisterEvent.checkPhoneNumber({
    required String phone,
  }) = _CheckPhoneNumber;
}
