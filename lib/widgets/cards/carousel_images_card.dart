// ignore_for_file: deprecated_member_use

import 'dart:developer';
import 'dart:math' as math;

import 'package:flutter/material.dart';

import 'package:easy_track/core/general_functions.dart';
import 'package:easy_track/core/text_styles.dart';
import 'package:easy_track/models/category_model/category_model.dart';

class CarouselImagesCard extends StatelessWidget {
  final double? height;
  final CategoryModel? category;
  const CarouselImagesCard({super.key, this.height, this.category});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 200,
      child: Column(
        children: [
          Text(category?.title ?? "title", style: AppTextStyle().title),
          Expanded(
            child: CarouselView.weighted(
              flexWeights: const [1, 2, 1],
              itemSnapping: true,
              onTap: (index) => log('Item ${index + 1}'),
              children: List.generate(
                category?.images?.length ?? 10,
                (i) {
                  final image = category?.images?[i];
                  return Stack(
                    children: [
                      Container(
                        color: image == null ? Colors.primaries[i] : null,
                        decoration: image != null
                            ? BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "${image.imageUrl}${math.Random().nextInt(9) + 1}"),
                                  fit: BoxFit.cover,
                                ),
                              )
                            : null,
                      ),
                      Positioned(
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
                      ),
                      Positioned(
                        bottom: 10,
                        left: 10,
                        right: 10,
                        child: Center(
                          child: FittedBox(
                            child: Text(
                              image?.date != null
                                  ? dateTimeToString(image!.date!)
                                  : 'Item ${i + 1}',
                              style: AppTextStyle()
                                  .cardDescription
                                  .copyWith(color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                          ),
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
}
