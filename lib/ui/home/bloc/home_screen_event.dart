part of 'home_screen_bloc.dart';

@freezed
class HomeScreenEvent with _$HomeScreenEvent {
  const factory HomeScreenEvent.initialize() = _Initialize;
  const factory HomeScreenEvent.addCategory({required String name}) =
      _AddCategory;
  const factory HomeScreenEvent.updateCategory(
      {required String name,
      File? image,
      DateTime? date,
      ImageModel? imageModel}) = _UpdateCategory;

  const factory HomeScreenEvent.deleteItem(
      {required String name, required ImageModel imageModel}) = _DeleteItem;
  const factory HomeScreenEvent.updateCategoryName(
      {required String name, required String oldName}) = _UpdateCategoryName;
  const factory HomeScreenEvent.deleteCategory({required String name}) =
      _DeleteCategory;
}
