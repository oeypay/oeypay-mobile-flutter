import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oepay/resources/data_source/auth_remote_data_source.dart';

import '../../../models/requests/pin_request_model.dart';
import '../../../models/response/pin_response_model.dart';

part 'pin_event.dart';
part 'pin_state.dart';
part 'pin_bloc.freezed.dart';

class PinBloc extends Bloc<PinEvent, PinState> {
  final Authremotedatasource dataSource;

  PinBloc(this.dataSource) : super(const _Initial()) {
    on<_SendPin>((event, emit) async {
      emit(const _Loading());
      final result = await dataSource.sendPIN(event.requestModel);
      result.fold(
        (failure) => emit(_Error(failure)),
        (response) => emit(_Success(response)),
      );
    });
  }
}
