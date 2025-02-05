import 'dart:io';

import 'package:easy_track/core/general_functions.dart';
import 'package:easy_track/core/global_vars.dart';
import 'package:easy_track/i18n/strings.g.dart';
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
          final message = await repo.addCategory(newCategory);
          if (message == t.category_added) {
            categories[e.name] = newCategory;
          }
          emit(HomeScreenState.message(
              categories: categories, message: message));
          refreshUI(emit);
        },
        updateCategory: (e) async {
          loading(emit);
          CategoryModel chosenCategory = categories.values
              .firstWhere((category) => category.title == e.name);
          String? imageUrl;
          final newImageId = getRandomString(10);
          if (e.image != null) {
            imageUrl = await firestoreUploadImageToStorage(
                path: "${globalUser.email}/${e.name}",
                imageFile: e.image!,
                imageName: newImageId);
          } else if (e.imageModel != null) {
            imageUrl = e.imageModel?.imageUrl;
          }
          List<ImageModel> categoryImages =
              List<ImageModel>.from(chosenCategory.images ?? []);
          categoryImages = List.of(categoryImages);
          if (e.imageModel != null) {
            categoryImages.removeWhere((img) => img.id == e.imageModel!.id);
          }
          categoryImages.add(
              ImageModel(id: newImageId, imageUrl: imageUrl, date: e.date));

          chosenCategory = chosenCategory.copyWith(images: categoryImages);
          await repo.updateCategory(chosenCategory);
          categories[e.name] = chosenCategory;

          refreshUI(emit);
        },
        deleteItem: (e) async {
          loading(emit);
          CategoryModel chosenCategory = categories.values
              .firstWhere((category) => category.title == e.name);
          List<ImageModel> categoryImages =
              List<ImageModel>.from(chosenCategory.images ?? []);
          categoryImages.removeWhere((img) => img.id == e.imageModel.id);
          chosenCategory = chosenCategory.copyWith(images: categoryImages);
          if (e.imageModel.imageUrl != null) {
            await firestoreRemoveFromStorage(
                "${globalUser.email}/${e.name}/${e.imageModel.id}");
          }
          await repo.updateCategory(chosenCategory);
          categories[e.name] = chosenCategory;
          refreshUI(emit);
        },
        updateCategoryName: (e) async {
          if (e.name != e.oldName) {
            loading(emit);
            CategoryModel chosenCategory = categories.values
                .firstWhere((category) => category.title == e.oldName);
            final updatedCategory = chosenCategory.copyWith(title: e.name);
            final message = await repo.addCategory(updatedCategory);
            if (message == t.category_added) {
              categories[e.name] = updatedCategory;

              categories.removeWhere((key, value) => key == e.oldName);
              await repo.deleteCategory(chosenCategory);
              await firestoreStorageRenameFolder(
                  globalUser.email, e.oldName, e.name);
            }
            emit(HomeScreenState.message(
                categories: categories, message: message));

            refreshUI(emit);
          }
        },
        deleteCategory: (e) async {
          loading(emit);
          CategoryModel chosenCategory = categories.values
              .firstWhere((category) => category.title == e.name);
          await firestoreDeleteFilesFromFolderOnStorage(
              "${globalUser.email}/${e.name}");
          categories.removeWhere((key, value) => key == e.name);
          await repo.deleteCategory(chosenCategory);

          refreshUI(emit);
        },
      );
    });
  }

  void loading(Emitter<HomeScreenState> emit) =>
      emit(HomeScreenState.loading(categories: categories));

  void refreshUI(Emitter<HomeScreenState> emit) {
    categories.forEach((key, category) {
      if (category.images != null) {
        List<ImageModel> mutableImages = List.of(category.images!);
        mutableImages.sort((a, b) => a.date!.compareTo(b.date!));
        categories[key] = category.copyWith(images: mutableImages);
      }
    });

    emit(HomeScreenState.refreshUI(categories: categories));
  }
}
