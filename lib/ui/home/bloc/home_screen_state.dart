part of 'home_screen_bloc.dart';

@freezed
class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState.initial(
      {required Map<String, CategoryModel> categories}) = HomeScreenInitial;
  const factory HomeScreenState.loading(
      {required Map<String, CategoryModel> categories}) = HomeScreenLoading;
  const factory HomeScreenState.refreshUI(
      {required Map<String, CategoryModel> categories}) = HomeScreenRefreshUI;
  const factory HomeScreenState.message(
      {required Map<String, CategoryModel> categories,
      required String message}) = HomeScreenMessage;
}
