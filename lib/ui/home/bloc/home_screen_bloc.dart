import 'package:easy_track/models/category_model/category_model.dart';
import 'package:easy_track/repos/category_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_screen_bloc.freezed.dart';
part 'home_screen_event.dart';
part 'home_screen_state.dart';

class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  final CategoryRepo repo;
  Map<String, CategoryModel> categories = {};
  HomeScreenBloc(this.repo)
      : super(const HomeScreenState.initial(categories: {})) {
    on<HomeScreenEvent>((event, emit) async {
      await event.map(
        initialize: (e) async {
          loading(emit);
          final categoriesMap = await repo.getCategories();
          categoriesMap.fold(
            (map) {
              categories = map;
            },
            (errorMessage) {
              emit(HomeScreenState.message(
                  categories: categories, message: errorMessage));
            },
          );

          refreshUI(emit);
        },
        addCategory: (e) async {
          loading(emit);
          final newCategory = CategoryModel(title: e.name);
          await repo.addCategory(newCategory);
          // categories.add(newCategory);
          refreshUI(emit);
        },
      );
    });
  }

  void loading(Emitter<HomeScreenState> emit) =>
      emit(HomeScreenState.loading(categories: categories));

  void refreshUI(Emitter<HomeScreenState> emit) =>
      emit(HomeScreenState.refreshUI(categories: categories));
}
