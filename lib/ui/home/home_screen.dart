import 'package:easy_track/repos/category_repo.dart';
import 'package:easy_track/ui/home/bloc/home_screen_bloc.dart';
import 'package:easy_track/widgets/dialogs/general_dialog.dart';
import 'package:easy_track/widgets/general/circular_progress_image.dart';
import 'package:flutter/material.dart';

import 'package:easy_track/core/colors.dart';
import 'package:easy_track/core/global_vars.dart';
import 'package:easy_track/core/text_styles.dart';
import 'package:easy_track/i18n/strings.g.dart';
import 'package:easy_track/widgets/cards/carousel_images_card.dart';
import 'package:easy_track/widgets/dialogs/add_category_dialog.dart';
import 'package:easy_track/widgets/general/appbar.dart';
import 'package:easy_track/widgets/general/side_menu_v2.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kh_easy_dev/kh_easy_dev.dart';
import 'package:kh_easy_dev/services/navigate_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => CategoryRepo(),
      child: BlocProvider(
        create: (context) => HomeScreenBloc(context.read<CategoryRepo>())
          ..add(const HomeScreenEvent.initialize()),
        child: BlocConsumer<HomeScreenBloc, HomeScreenState>(
          listener: (context, state) {
            state.maybeWhen(
                message: (categories, message) => kheasydevAppToast(message),
                orElse: () {});
          },
          builder: (context, state) {
            final bloc = context.read<HomeScreenBloc>();
            return Scaffold(
              appBar: appAppBar(title: t.home_screen),
              drawer: appSideMenuV2(context, 'home'),
              body: state.maybeWhen(
                loading: (categories) =>
                    const Center(child: CircularProgressImage()),
                orElse: () => SizedBox(
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: state.categories.isNotEmpty
                      ? SingleChildScrollView(
                          child: Column(
                            children: [
                              Text(
                                t.greeting(name: globalUser.name ?? ""),
                                style: AppTextStyle().bigTitle,
                              ),
                              ListView.separated(
                                scrollDirection: Axis.vertical,
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: state.categories.length,
                                separatorBuilder: (context, index) =>
                                    kheasydevDivider(
                                        black: true,
                                        padding: const EdgeInsets.all(24)),
                                itemBuilder: (context, index) {
                                  return CarouselImagesCard(
                                    category: state.categories.values
                                        .elementAt(index),
                                    saveCategory: (image, date, imageModel) {
                                      KheasydevNavigatePage()
                                          .maybePopDuration(context);
                                      KheasydevNavigatePage()
                                          .maybePopDuration(context);
                                      bloc.add(
                                        HomeScreenEvent.updateCategory(
                                            name: state.categories.keys
                                                .elementAt(index),
                                            image: image,
                                            date: date,
                                            imageModel: imageModel),
                                      );
                                    },
                                    deleteItem: (imageModel) async {
                                      KheasydevNavigatePage().pop(context);
                                      final userChoise = await showDialog(
                                        context: context,
                                        builder: (context) => generalDialog(
                                            title: "${t.sure_delete_item}?"),
                                      );
                                      if (userChoise) {
                                        bloc.add(HomeScreenEvent.deleteItem(
                                            name: state.categories.keys
                                                .elementAt(index),
                                            imageModel: imageModel));
                                      }
                                    },
                                    deleteCategory: (name) async {
                                      final userChoise = await showDialog(
                                        context: context,
                                        builder: (context) => generalDialog(
                                            title:
                                                "${t.sure_delete_category}?"),
                                      );
                                      if (userChoise) {
                                        bloc.add(HomeScreenEvent.deleteCategory(
                                            name: name));
                                      }
                                    },
                                    editCategory: (oldName) async =>
                                        await showDialog(
                                      context: context,
                                      builder: (context) => AddCategoryDialog(
                                          saveCategory: (name) => bloc.add(
                                                HomeScreenEvent
                                                    .updateCategoryName(
                                                        name: name,
                                                        oldName: oldName),
                                              ),
                                          oldName: oldName),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        )
                      : Center(
                          child: Text(t.no_categories),
                        ),
                ),
              ),
              floatingActionButton: FloatingActionButton.extended(
                onPressed: () async => await showDialog(
                  context: context,
                  builder: (context) => AddCategoryDialog(
                    saveCategory: (name) =>
                        bloc.add(HomeScreenEvent.addCategory(name: name)),
                  ),
                ),
                backgroundColor: AppColors.shadowColor,
                label: Text(
                  t.add_category,
                  style: AppTextStyle()
                      .smallDescription
                      .copyWith(color: Colors.white),
                ),
                icon: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
