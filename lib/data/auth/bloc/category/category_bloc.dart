import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../dataSource/categoryRemoteDataSource.dart';
import '../../../models/response/categoryResponseModel.dart';

part 'category_event.dart';
part 'category_state.dart';
part 'category_bloc.freezed.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc() : super(_Initial()) {
    on<_GetAll>((event, emit) async {
      // TODO: implement event handler
      emit(_Loading());
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
