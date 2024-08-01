part of 'pin_bloc.dart';

@freezed
class PinEvent with _$PinEvent {
  const factory PinEvent.started() = _Started;
  const factory PinEvent.sendPin({required PinRequestModel requestModel}) =
      _SendPin;

  const factory PinEvent.verifyPin({required PinRequestModel requestModel}) =
      _VerifyPin;
}
