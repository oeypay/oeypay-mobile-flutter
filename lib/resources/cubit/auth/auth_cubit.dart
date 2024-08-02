import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oepay/common/constant/enums.dart';
import 'package:oepay/resources/models/auth/phone_number_model.dart';
import 'package:oepay/resources/models/user_model/user_model.dart';
import 'package:oepay/resources/provider/auth_provider.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit()
      : super(const AuthState(
            status: BlocConnectionStatus.initialized,
            statusAction: BlocConnectionStatus.initialized));

  Future<void> checkPhoneNumber({String? phoneNumber}) async {
    emit(state.copyWith(
      statusAction: BlocConnectionStatus.loading,
    ));

    final result =
        await ApiAuthProvider.checkPhoneNumber(phoneNumber: phoneNumber);
    if (result.value != null) {
      emit(state.copyWith(
          statusAction: BlocConnectionStatus.success,
          phoneNumberModel: result.value));
    } else {
      emit(state.copyWith(
          statusAction: BlocConnectionStatus.failed, message: result.message));
    }
  }

  Future<void> resendOtp({String? phoneNumber}) async {
    emit(state.copyWith(
      statusAction: BlocConnectionStatus.loading,
    ));

    final result = await ApiAuthProvider.resendOtp(phoneNumber: phoneNumber);
    if (result.value != null) {
      emit(state.copyWith(
          statusAction: BlocConnectionStatus.success,
          phoneNumberModel: result.value));
    } else {
      emit(state.copyWith(
          statusAction: BlocConnectionStatus.failed, message: result.message));
    }
  }

  Future<void> verifyOtp({String? phoneNumber, String? otpCode}) async {
    emit(state.copyWith(
      statusAction: BlocConnectionStatus.loading,
    ));

    final result = await ApiAuthProvider.verifyOtp(
        phoneNumber: phoneNumber, otpCode: otpCode);
    if (result.value != null) {
      emit(state.copyWith(
          statusAction: BlocConnectionStatus.success,
          phoneNumberModel: result.value));
    } else {
      emit(state.copyWith(
          statusAction: BlocConnectionStatus.failed, message: result.message));
    }
  }

  Future<void> sendPin({String? phoneNumber, String? pin}) async {
    emit(state.copyWith(
      statusAction: BlocConnectionStatus.loading,
    ));

    final result =
        await ApiAuthProvider.sendPin(phoneNumber: phoneNumber, pin: pin);
    if (result.value != null) {
      emit(state.copyWith(
          statusAction: BlocConnectionStatus.success,
          phoneNumberModel: result.value));
    } else {
      emit(state.copyWith(
          statusAction: BlocConnectionStatus.failed, message: result.message));
    }
  }

  Future<void> signUp({String? name, String? phone, String? referral}) async {
    emit(state.copyWith(statusAction: BlocConnectionStatus.loading));

    final result = await ApiAuthProvider.signUp(
        name: name, phone: phone, referral: referral);
    debugPrint('signUp data: name=${name}, phone=$phone, referral=${referral}');

    if (result.success != null) {
      emit(state.copyWith(
          statusAction: BlocConnectionStatus.success, message: result.success));
    } else {
      emit(state.copyWith(
          statusAction: BlocConnectionStatus.failed, message: result.message));
    }
  }

  Future<void> signIn({String? pin, String? phone}) async {
    emit(state.copyWith(status: BlocConnectionStatus.loading));

    final result = await ApiAuthProvider.signIn(pin: pin, phone: phone);
    if (result.value != null) {
      emit(state.copyWith(
          status: BlocConnectionStatus.success, userModel: result.value));
    } else {
      emit(state.copyWith(
          status: BlocConnectionStatus.failed, message: result.message));
    }
  }
}
