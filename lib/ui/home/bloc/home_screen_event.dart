part of 'home_screen_bloc.dart';

@freezed
class HomeScreenEvent with _$HomeScreenEvent {
  const factory HomeScreenEvent.initialize() = _Initialize;
  const factory HomeScreenEvent.addCategory({required String name}) =
      _AddCategory;
  const factory HomeScreenEvent.updateCategory(
      {required String name, File? image, DateTime? date}) = _SaveCategory;
}
