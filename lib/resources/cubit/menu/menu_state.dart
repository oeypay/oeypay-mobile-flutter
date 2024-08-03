part of 'menu_cubit.dart';

class MenuState extends Equatable {
  const MenuState({
    required this.status,
    required this.statusAction,
    this.message,
    this.loadMoreStatus,
    this.getListMenu,
    this.getListProduct,
  });

  final BlocConnectionStatus status, statusAction;
  final String? message;
  final LoadMoreStatus? loadMoreStatus;
  final List<CategoriesModel>? getListMenu;
  final List<ProductModel>? getListProduct;

  MenuState copyWith({
    String? message,
    BlocConnectionStatus? status,
    BlocConnectionStatus? statusAction,
    LoadMoreStatus? loadMoreStatus,
    List<CategoriesModel>? getListMenu,
    List<ProductModel>? getListProduct,
  }) {
    return MenuState(
      message: message ?? this.message,
      status: status ?? this.status,
      statusAction: statusAction ?? this.statusAction,
      loadMoreStatus: loadMoreStatus ?? this.loadMoreStatus,
      getListMenu: getListMenu ?? this.getListMenu,
      getListProduct: getListProduct ?? this.getListProduct,
    );
  }

  @override
  List<Object?> get props => [
        status,
        message,
        statusAction,
        loadMoreStatus,
        getListMenu,
        getListProduct,
      ];
}
