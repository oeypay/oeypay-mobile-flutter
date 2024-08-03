import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oepay/common/constant/enums.dart';
import 'package:oepay/resources/models/menu/categories_model/categories_model.dart';
import 'package:oepay/resources/models/menu/product_model/product_model.dart';
import 'package:oepay/resources/provider/menu_provider.dart';

part 'menu_state.dart';

class MenuCubit extends Cubit<MenuState> {
  MenuCubit()
      : super(const MenuState(
            status: BlocConnectionStatus.initialized,
            loadMoreStatus: LoadMoreStatus.none,
            statusAction: BlocConnectionStatus.initialized));

  Future<void> getAllMenus() async {
    emit(state.copyWith(status: BlocConnectionStatus.loading));

    final result = await ApiMenuProvider.getAllMenus();

    if (result.value != null) {
      if (result.value!.isEmpty) {
        emit(state.copyWith(status: BlocConnectionStatus.empty));
      } else {
        emit(state.copyWith(
            status: BlocConnectionStatus.success, getListMenu: result.value));
      }
    } else {
      emit(state.copyWith(
          status: BlocConnectionStatus.failed, message: result.message));
    }
  }

  Future<void> getProduct({String? brand, String? category}) async {
    emit(state.copyWith(status: BlocConnectionStatus.loading));

    final result =
        await ApiMenuProvider.getProduct(brand: brand, category: category);

    if (result.value != null) {
      if (result.value!.isEmpty) {
        emit(state.copyWith(status: BlocConnectionStatus.empty));
      } else {
        emit(state.copyWith(
            status: BlocConnectionStatus.success,
            getListProduct: result.value));
      }
    } else {
      emit(state.copyWith(
          status: BlocConnectionStatus.failed, message: result.message));
    }
  }
}
