import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oepay/common/constant/enums.dart';
import 'package:oepay/resources/models/auth/phone_number_model.dart';
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

  Future<void> signUp({String? name, String? phone, String? referral}) async {
    emit(state.copyWith(statusAction: BlocConnectionStatus.loading));

    final result = await ApiAuthProvider.signUp(
        name: name, phone: phone, referral: referral);

    if (result.success != null) {
      emit(state.copyWith(
          statusAction: BlocConnectionStatus.success, message: result.success));
    } else {
      emit(state.copyWith(
          statusAction: BlocConnectionStatus.failed, message: result.message));
    }
  }

  // Future<void> getUser() async {
  //   final result = await ApiAuthProvider.getUser();

  //   if (result.value != null) {
  //     emit(AuthState(
  //         status: BlocConnectionStatus.success, userModel: result.value));
  //   } else {
  //     emit(AuthState(
  //         status: BlocConnectionStatus.failed, message: result.message));
  //   }
  // }
}
