import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../dataSource/authRemoteDataSource.dart';
import '../../../models/requests/otpRequestModel.dart';
import '../../../models/response/otpResponseModel.dart';

part 'kode_otp_event.dart';
part 'kode_otp_state.dart';
part 'kode_otp_bloc.freezed.dart';

class KodeOtpBloc extends Bloc<KodeOtpEvent, KodeOtpState> {
  final Authremotedatasource dataSource;

  KodeOtpBloc(this.dataSource) : super(_Initial()) {
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
