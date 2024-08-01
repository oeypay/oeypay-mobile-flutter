part of 'kode_otp_bloc.dart';

@freezed
class KodeOtpEvent with _$KodeOtpEvent {
  const factory KodeOtpEvent.started() = _Started;
  const factory KodeOtpEvent.sendOTP({
    required OTPRequestModel otpRequestModel,
  }) = _SendOTP;

  const factory KodeOtpEvent.verifyOTP({
    required OTPRequestModel otpRequestModel,
  }) = _VerifyOTP;
}
