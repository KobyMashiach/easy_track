import 'dart:developer';

import 'package:easy_track/core/hive/hive_functions.dart';
import 'package:easy_track/widgets/dialogs/general_dialog.dart';
import 'package:easy_track/widgets/general/appbar.dart';
import 'package:flutter/material.dart';

class DeveloperScreen extends StatelessWidget {
  const DeveloperScreen({super.key});

  List<Map<String, dynamic>> settingsOptions(BuildContext context) {
    final List<Map<String, dynamic>> settingOptions = [
      {
        'title': "Clear all hive boxes",
        'icon': Icons.storage_rounded,
        'function': () async {
          final userChoise = await deleteSomethingDialog(context);
          if (userChoise == true) {
            clearAllHiveBoxes();
            log("All local storage deleted!");
          }
        }
      },
    ];
    return settingOptions;
  }

  Future<dynamic> deleteSomethingDialog(BuildContext context, {String? text}) {
    return showDialog(
      context: context,
      builder: (context) =>
          generalDialog(title: text ?? "Delete all local storage?"),
    );
  }

  @override
  Widget build(BuildContext context) {
    final settingOptions = settingsOptions(context);
    return Scaffold(
      appBar: appAppBar(title: "Developer Screen"),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.separated(
          itemCount: settingOptions.length,
          separatorBuilder: (context, index) => const SizedBox(height: 5),
          itemBuilder: (context, index) {
            return Card(
              child: GestureDetector(
                onTap: () => settingOptions[index]['function'](),
                child: ListTile(
                  leading: Icon(settingOptions[index]['icon']),
                  title: Text(settingOptions[index]['title'].toString()),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
