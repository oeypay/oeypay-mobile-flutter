import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../dataSource/category_remote_data_source.dart';
import '../../../models/response/category_response_model.dart';

part 'category_event.dart';
part 'category_state.dart';
part 'category_bloc.freezed.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc() : super(const _Initial()) {
    on<_GetAll>((event, emit) async {
      // TODO: implement event handler
      emit(const _Loading());
      final response = await Categoryremotedatasource().getAllCategory();
      response.fold(
        (l) => emit(_Error(l)),
        (r) => emit(
          _Loaded(r),
        ),
      );
    });
  }
}
