import 'dart:developer';

import 'package:easy_track/core/text_styles.dart';
import 'package:easy_track/i18n/strings.g.dart';
import 'package:easy_track/widgets/cards/carousel_images_card.dart';
import 'package:easy_track/widgets/general/appbar.dart';
import 'package:easy_track/widgets/general/side_menu_v2.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBar(title: t.home_screen),
      drawer: appSideMenuV2(context, 'home'),
      body: SizedBox(
        height: MediaQuery.of(context).size.height * 0.8,
        child: ListView.separated(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: 10,
            separatorBuilder: (context, index) => SizedBox(height: 40),
            itemBuilder: (context, index) {
              int randomNumber = math.Random().nextInt(90) + 10;

              return CarouselImagesCard(
                image: 'https://random.imagecdn.app/300/$randomNumber',
              );
            }),
      ),
    );
  }
}
