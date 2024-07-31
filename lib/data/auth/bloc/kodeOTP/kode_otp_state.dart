part of 'kode_otp_bloc.dart';

@freezed
class KodeOtpState with _$KodeOtpState {
  const factory KodeOtpState.initial() = _Initial;
  const factory KodeOtpState.loading() = _Loading;
  const factory KodeOtpState.error(String message) = _Error;
  const factory KodeOtpState.success(OTPResponseModel responseModel) = _Success;
}
