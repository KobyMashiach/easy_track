import 'dart:developer';
import 'package:easy_track/core/text_styles.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class CarouselImagesCard extends StatelessWidget {
  final double? height;
  final int? length;
  final String? image;
  final String? text;
  final String? title;
  const CarouselImagesCard(
      {super.key, this.height, this.image, this.text, this.title, this.length});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 200,
      child: Column(
        children: [
          Text(title ?? "title", style: AppTextStyle().title),
          Expanded(
            child: CarouselView.weighted(
              flexWeights: const [1, 2, 1],
              itemSnapping: true,
              onTap: (index) => log('Item ${index + 1}'),
              children: List.generate(
                length ?? 10,
                (i) => Stack(
                  children: [
                    // Background image or color
                    Container(
                      color: image == null ? Colors.primaries[i] : null,
                      decoration: image != null
                          ? BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    "$image${math.Random().nextInt(9) + 1}"),
                                fit: BoxFit.cover,
                              ),
                            )
                          : null,
                    ),
                    // White blur at the bottom
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
                    // Text at the bottom
                    Positioned(
                      bottom: 10, // Padding from the bottom
                      left: 10,
                      right: 10,
                      child: Center(
                        child: Text(
                          text ?? 'Item ${i + 1}',
                          style: AppTextStyle()
                              .cardDescription
                              .copyWith(color: Colors.black),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
