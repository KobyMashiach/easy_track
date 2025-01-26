import 'package:easy_track/core/colors.dart';
import 'package:easy_track/dev/developer_screen.dart';
import 'package:easy_track/main.dart';
import 'package:flutter/material.dart';
import 'package:kh_easy_dev/kh_easy_dev.dart';

appAppBar({
  required String title,
  List<Widget>? actions,
  Widget? developerPage,
  VoidCallback? onBackButtonPreesed,
  BuildContext? context,
  (String, Function(String))? searchAppBar,
}) {
  return kheasydevAppBar(
    title: title,
    logoPath: 'assets/logo.png',
    primaryColor: AppColors.primaryColor,
    shadowColor: AppColors.shadowColor,
    titleColor: Colors.white,
    actions: actions,
    developerPage: (developerPage ?? const DeveloperScreen()),
    leading: onBackButtonPreesed != null
        ? IconButton(
            onPressed: onBackButtonPreesed, icon: const Icon(Icons.arrow_back))
        : null,
    context: context ?? NavigationContextService.navigatorKey.currentContext,
    searchAppBar: searchAppBar,
  );
}
