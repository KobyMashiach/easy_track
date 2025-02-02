import 'dart:io';

import 'package:easy_track/core/colors.dart';
import 'package:easy_track/core/general_functions.dart';
import 'package:easy_track/core/global_vars.dart';
import 'package:easy_track/core/text_styles.dart';
import 'package:easy_track/i18n/strings.g.dart';
import 'package:easy_track/widgets/design/fields/app_textfields.dart';
import 'package:easy_track/widgets/general/appbar.dart';
import 'package:easy_track/widgets/general/bottom_navigation_bars/app_buttons_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class FillDetailsScreen extends StatefulWidget {
  final Function(String firstName, String lastName, File? image) onSave;
  const FillDetailsScreen({super.key, required this.onSave});

  @override
  State<FillDetailsScreen> createState() => _FillDetailsScreenState();
}

class _FillDetailsScreenState extends State<FillDetailsScreen> {
  late TextEditingController emailController;
  late TextEditingController firstNameController;
  late TextEditingController lastNameController;
  Image? image;
  File? file;

  @override
  void initState() {
    emailController = TextEditingController();
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    getUserData();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
  }

  void getUserData() {
    emailController.text = globalUser.email;
    firstNameController.text = globalUser.firstName ?? "";
    lastNameController.text = globalUser.lastName ?? "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBar(title: t.user_details),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Center(
          child: SizedBox.expand(
            child: SingleChildScrollView(
              child: Column(
                spacing: 12,
                children: [
                  imageWidget(),
                  detailFieldRow(t.email_address, emailController, true),
                  detailFieldRow(t.first_name, firstNameController),
                  detailFieldRow(t.last_name, lastNameController),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: AppButtonsBottomNavigationBar(
        oneButton: true,
        activeButtonText: t.save,
        activeButtonOnTap: () => widget.onSave(
            firstNameController.text, lastNameController.text, file),
      ),
    );
  }

  Stack imageWidget() {
    return Stack(
      children: [
        InkWell(
          onTap: () async {
            setState(() {
              file = null;
              image = null;
            });
          },
          child: CircleAvatar(
            radius: 15,
            backgroundColor: AppColors.error,
            child: Icon(Icons.highlight_remove_sharp, color: Colors.white),
          ),
        ),
        CircleAvatar(
          radius: 80,
          backgroundColor: AppColors.primaryColor,
          foregroundImage: file != null
              ? FileImage(file!)
              : (globalUser.picture != null
                  ? NetworkImage(globalUser.picture!)
                  : null),
          child: image == null && globalUser.picture == null
              ? getImageText()
              : null,
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: InkWell(
            onTap: () async {
              file = await pickImageImagePicker();
              if (file != null) {
                setState(() {
                  image = Image.file(file!, fit: BoxFit.cover);
                });
              }
            },
            child: CircleAvatar(
              radius: 25,
              backgroundColor: AppColors.primaryColor,
              child: Icon(Icons.add_a_photo, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }

  Text getImageText() {
    return Text(
      firstNameController.text[0].toUpperCase() +
          lastNameController.text[0].toUpperCase(),
      style: AppTextStyle().bigTitle.copyWith(color: Colors.white),
    );
  }

  Row detailFieldRow(String title, TextEditingController controller,
      [bool readOnly = false]) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Text(
            "$title:",
            style: AppTextStyle()
                .description
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          flex: 5,
          child: AppTextField(
            hintText: title,
            controller: controller,
            readOnly: readOnly,
          ),
        ),
      ],
    );
  }
}
