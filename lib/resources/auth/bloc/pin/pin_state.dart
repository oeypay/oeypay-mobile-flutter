part of 'pin_bloc.dart';

@freezed
class PinState with _$PinState {
  const factory PinState.initial() = _Initial;
  const factory PinState.loading() = _Loading;
  const factory PinState.success(PinResponseModel response) = _Success;
  const factory PinState.error(String message) = _Error;
}
