part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.initial() = _Initial;
  const factory CategoryState.loading() = _Loading;
  const factory CategoryState.loaded(CategoryResponseModel categoryResponse) =
      _Loaded;
  const factory CategoryState.error(String msg) = _Error;
}
