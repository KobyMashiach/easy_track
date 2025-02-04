import 'dart:developer';
import 'dart:math' as math;

import 'package:easy_track/repos/category_repo.dart';
import 'package:easy_track/ui/home/bloc/home_screen_bloc.dart';
import 'package:flutter/material.dart';

import 'package:easy_track/core/colors.dart';
import 'package:easy_track/core/global_vars.dart';
import 'package:easy_track/core/text_styles.dart';
import 'package:easy_track/i18n/strings.g.dart';
import 'package:easy_track/models/category_model/category_model.dart';
import 'package:easy_track/models/image_model/image_model.dart';
import 'package:easy_track/widgets/cards/carousel_images_card.dart';
import 'package:easy_track/widgets/design/fields/app_textfields.dart';
import 'package:easy_track/widgets/dialogs/add_category_dialog.dart';
import 'package:easy_track/widgets/dialogs/general_dialog.dart';
import 'package:easy_track/widgets/general/appbar.dart';
import 'package:easy_track/widgets/general/side_menu_v2.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => CategoryRepo(),
      child: BlocProvider(
        create: (context) => HomeScreenBloc(context.read<CategoryRepo>()),
        child: BlocConsumer<HomeScreenBloc, HomeScreenState>(
          listener: (context, state) {},
          builder: (context, state) {
            final bloc = context.read<HomeScreenBloc>();
            return Scaffold(
              appBar: appAppBar(title: t.home_screen),
              drawer: appSideMenuV2(context, 'home'),
              body: SizedBox(
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
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: state.categories.length,
                              separatorBuilder: (context, index) =>
                                  SizedBox(height: 40),
                              itemBuilder: (context, index) {
                                // int randomNumber = math.Random().nextInt(90) + 10;
                                // final category = CategoryModel(
                                //     title: 'Category $index',
                                //     images: List.generate(
                                //         10,
                                //         (i) => ImageModel(
                                //             imageUrl:
                                //                 'https://random.imagecdn.app/300/$randomNumber',
                                //             date: DateTime.now())));
                                return CarouselImagesCard(
                                    category: state.categories[index]);
                              },
                            ),
                          ],
                        ),
                      )
                    : Center(
                        child: Text(t.no_categories),
                      ),
              ),
              floatingActionButton: FloatingActionButton.extended(
                onPressed: () async {
                  await showDialog(
                    context: context,
                    builder: (context) => AddCategoryDialog(
                      saveCategory: (name) =>
                          bloc.add(HomeScreenEvent.addCategory(name: name)),
                    ),
                  );
                },
                backgroundColor: AppColors.shadowColor,
                label: Text(
                  t.add_category,
                  style: AppTextStyle()
                      .smallDescription
                      .copyWith(color: Colors.white),
                ),
                icon: Icon(
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
