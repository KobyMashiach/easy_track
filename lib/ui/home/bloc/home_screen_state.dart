part of 'home_screen_bloc.dart';

@freezed
class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState.initial(
      {required List<CategoryModel> categories}) = HomeScreenInitial;
  const factory HomeScreenState.loading(
      {required List<CategoryModel> categories}) = HomeScreenLoading;
  const factory HomeScreenState.refreshUI(
      {required List<CategoryModel> categories}) = HomeScreenRefreshUI;

  // const factory HomeScreenState.addCategory() = _HomeScreenAddCategory;
}
