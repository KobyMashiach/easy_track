import 'dart:developer';
import 'dart:math' as math;

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

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBar(title: t.home_screen),
      drawer: appSideMenuV2(context, 'home'),
      body: SizedBox(
        height: MediaQuery.of(context).size.height * 0.8,
        child: SingleChildScrollView(
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
                itemCount: 10,
                separatorBuilder: (context, index) => SizedBox(height: 40),
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
                  // return CarouselImagesCard(category: category);
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          await showDialog(
            context: context,
            builder: (context) => AddCategoryDialog(
              saveCategory: (name) => log(name),
            ),
          );
        },
        backgroundColor: AppColors.shadowColor,
        label: Text(
          t.add_category,
          style: AppTextStyle().smallDescription.copyWith(color: Colors.white),
        ),
        icon: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
