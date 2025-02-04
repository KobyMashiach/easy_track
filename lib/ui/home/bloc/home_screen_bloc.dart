import 'dart:io';

import 'package:easy_track/core/general_functions.dart';
import 'package:easy_track/core/global_vars.dart';
import 'package:easy_track/models/category_model/category_model.dart';
import 'package:easy_track/models/image_model/image_model.dart';
import 'package:easy_track/repos/category_repo.dart';
import 'package:easy_track/services/firebase/firestore_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';

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
          categories[e.name] = newCategory;
          refreshUI(emit);
        },
        updateCategory: (e) async {
          loading(emit);
          CategoryModel chosenCategory = categories.values
              .firstWhere((category) => category.title == e.name);
          String? imageUrl;
          if (e.image != null) {
            imageUrl = await firestoreUploadImageToStorage(
                path: "${globalUser.email}/${e.name}",
                imageFile: e.image!,
                imageName: getRandomString(10));
          }
          List<ImageModel> categoryImages =
              List<ImageModel>.from(chosenCategory.images ?? []);
          categoryImages = List.of(categoryImages);
          categoryImages.add(ImageModel(imageUrl: imageUrl, date: e.date));
          chosenCategory = chosenCategory.copyWith(images: categoryImages);
          await repo.updateCategory(chosenCategory);
          categories[e.name] = chosenCategory;

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
