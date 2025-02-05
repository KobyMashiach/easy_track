import 'dart:io';

import 'package:flutter/material.dart';

import 'package:easy_track/core/general_functions.dart';
import 'package:easy_track/core/images.dart';
import 'package:easy_track/core/text_styles.dart';
import 'package:easy_track/i18n/strings.g.dart';
import 'package:easy_track/models/category_model/category_model.dart';
import 'package:easy_track/models/image_model/image_model.dart';
import 'package:easy_track/widgets/dialogs/add_item_dialog.dart';
import 'package:easy_track/widgets/dialogs/general_dialog.dart';
import 'package:kh_easy_dev/services/navigate_page.dart';

class CarouselImagesCard extends StatelessWidget {
  final double? height;
  final CategoryModel category;
  final Function(File? image, DateTime date, ImageModel? imageModel)
      saveCategory;
  final Function(ImageModel imageModel) deleteItem;

  const CarouselImagesCard(
      {super.key,
      this.height,
      required this.category,
      required this.saveCategory,
      required this.deleteItem});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 200,
      child: Column(
        children: [
          Text(category.title ?? "", style: AppTextStyle().title),
          Expanded(
            child: CarouselView.weighted(
              flexWeights: const [1, 2, 1],
              itemSnapping: true,
              onTap: (index) async => onTapCategory(index, context),
              children: List.generate(
                (category.images?.length ?? 0) + 1,
                (i) {
                  ImageModel? image;
                  if (i < (category.images?.length ?? 0)) {
                    image = category.images?[i];
                  }
                  return Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        color: image?.imageUrl == null
                            ? Colors.primaries[i % 17]
                            : null,
                        child: image?.imageUrl != null
                            ? cacheImage(image!.imageUrl!)
                            : null,
                      ),
                      whiteShadow(),
                      if (image == null)
                        const Center(child: Icon(Icons.add, size: 40)),
                      Positioned(
                        bottom: 10,
                        left: 10,
                        right: 10,
                        child: Center(
                          child: textWithBorder(text: getItemText(image, i)),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> onTapCategory(int index, BuildContext context) async {
    {
      if (index == (category.images?.length ?? 0)) {
        await showDialog(
          context: context,
          builder: (context) => AddItemDialog(
            saveCategory: saveCategory,
          ),
        );
      } else {
        showDialog(
          context: context,
          builder: (context) => generalDialog(
            title: category.title,
            description: dateTimeToString(category.images![index].date!),
            child: Container(
              constraints: const BoxConstraints(maxHeight: 500),
              child: (category.images?[index].imageUrl != null)
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: cacheImage(category.images![index].imageUrl!,
                          fit: BoxFit.fitHeight),
                    )
                  : const SizedBox.shrink(),
            ),
            okButtonText: t.edit,
            okButtonOnTap: () async {
              KheasydevNavigatePage().pop(context);
              await showDialog(
                context: context,
                builder: (context) => AddItemDialog(
                  saveCategory: saveCategory,
                  imageModel: category.images![index],
                ),
              );
            },
            cancelButtonText: t.delete,
            cancelButtonOnTap: () => deleteItem.call(category.images![index]),
          ),
        );
      }
    }
  }

  Positioned whiteShadow() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: height != null ? height! / 2 : 100,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white.withOpacity(0),
              Colors.white.withOpacity(0.8),
            ],
          ),
        ),
      ),
    );
  }

  String getItemText(ImageModel? image, int i) {
    return image == null
        ? t.add_item
        : image.date != null
            ? dateTimeToString(image.date!)
            : 'Item ${i + 1}';
  }

  FittedBox textWithBorder({required String text}) {
    return FittedBox(
      child: Row(
        children: [
          Stack(
            children: [
              Text(
                text,
                style: AppTextStyle().cardDescription.copyWith(
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 2
                        ..color = Colors.white,
                    ),
                textAlign: TextAlign.center,
              ),
              Text(
                text,
                style: AppTextStyle().cardDescription.copyWith(
                      color: Colors.black,
                    ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
