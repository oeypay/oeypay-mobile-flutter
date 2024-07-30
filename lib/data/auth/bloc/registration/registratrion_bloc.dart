import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../models/request/register_request_model.dart';
import '../../../models/responses/auth_responses_model.dart';

part 'registratrion_event.dart';
part 'registratrion_state.dart';
part 'registratrion_bloc.freezed.dart';

class RegistratrionBloc extends Bloc<RegistratrionEvent, RegistratrionState> {
  RegistratrionBloc() : super(_Initial()) {
    on<RegistratrionEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
