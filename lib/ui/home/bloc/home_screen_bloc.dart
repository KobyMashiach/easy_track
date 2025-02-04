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
  final List<CategoryModel> categories = [];
  HomeScreenBloc(this.repo)
      : super(const HomeScreenState.initial(categories: [])) {
    on<HomeScreenEvent>((event, emit) async {
      await event.map(
        addCategory: (e) async {
          loading(emit);
          categories.add(CategoryModel(title: e.name));
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
