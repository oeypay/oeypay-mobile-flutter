import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data_source/auth_remote_data_source.dart';
import '../../../models/requests/otp_request_model.dart';
import '../../../models/response/otp_response_model.dart';

part 'kode_otp_event.dart';
part 'kode_otp_state.dart';
part 'kode_otp_bloc.freezed.dart';

class KodeOtpBloc extends Bloc<KodeOtpEvent, KodeOtpState> {
  final Authremotedatasource dataSource;

  KodeOtpBloc(this.dataSource) : super(const _Initial()) {
    on<_SendOTP>((event, emit) async {
      emit(const _Loading());
      final result = await dataSource.sendOTP(event.otpRequestModel);
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Success(r)),
      );
    });

    on<_VerifyOTP>((event, emit) async {
      emit(const _Loading());
      final result = await dataSource.verifyOtp(event.otpRequestModel);
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Success(r)),
      );
    });
  }
}
