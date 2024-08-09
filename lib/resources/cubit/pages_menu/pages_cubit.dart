import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:oepay/resources/models/menu/menu_pages/pages_model.dart';
import 'package:oepay/resources/provider/pages_provider.dart';

import '../../../common/constant/enums.dart';

part 'pages_state.dart';

class PagesCubit extends Cubit<PagesState> {
  PagesCubit()
      : super(
          const PagesState(
            status: BlocConnectionStatus.initialized,
            loadMoreStatus: LoadMoreStatus.none,
            statusAction: BlocConnectionStatus.initialized,
          ),
        );

  Future<void> getBanner({String? categoryId}) async {
    emit(state.copyWith(status: BlocConnectionStatus.loading));

    final result = await ApiPagesProvider.getProduct(categoryId: categoryId);

    if (result.value != null) {
      if (result.value!.isEmpty) {
        emit(state.copyWith(status: BlocConnectionStatus.empty));
      } else {
        emit(state.copyWith(
          status: BlocConnectionStatus.success,
          getListPages: result.value,
        ));
      }
    } else {
      emit(state.copyWith(
        status: BlocConnectionStatus.failed,
        message: result.message,
      ));
    }
  }
}
