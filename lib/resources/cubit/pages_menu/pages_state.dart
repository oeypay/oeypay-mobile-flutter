part of 'pages_cubit.dart';

class PagesState extends Equatable {
  const PagesState({
    required this.status,
    required this.statusAction,
    this.message,
    this.loadMoreStatus,
    this.getListPages,
  });

  final BlocConnectionStatus status, statusAction;
  final String? message;
  final LoadMoreStatus? loadMoreStatus;
  final List<PagesModel>? getListPages;

  PagesState copyWith({
    BlocConnectionStatus? status,
    BlocConnectionStatus? statusAction,
    String? message,
    LoadMoreStatus? loadMoreStatus,
    List<PagesModel>? getListPages,
  }) {
    return PagesState(
      status: status ?? this.status,
      statusAction: statusAction ?? this.statusAction,
      message: message ?? this.message,
      loadMoreStatus: loadMoreStatus ?? this.loadMoreStatus,
      getListPages: getListPages ?? this.getListPages,
    );
  }

  @override
  List<Object?> get props => [
        status,
        statusAction,
        message,
        loadMoreStatus,
        getListPages,
      ];
}
