import 'dart:io';

import 'package:easy_track/core/colors.dart';
import 'package:easy_track/core/general_functions.dart';
import 'package:easy_track/core/global_vars.dart';
import 'package:easy_track/core/text_styles.dart';
import 'package:easy_track/i18n/strings.g.dart';
import 'package:easy_track/widgets/design/fields/app_textfields.dart';
import 'package:easy_track/widgets/general/appbar.dart';
import 'package:flutter/material.dart';

class FillDetailsScreen extends StatefulWidget {
  const FillDetailsScreen({super.key});

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
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () async {
                    file = await pickImageImagePicker();
                    if (file != null) {
                      setState(() {
                        image = Image.file(file!, fit: BoxFit.cover);
                      });
                    }
                  },
                  child: CircleAvatar(
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
                ),
                detailFieldRow(t.email_address, emailController),
                detailFieldRow(t.first_name, firstNameController),
                detailFieldRow(t.last_name, lastNameController),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Text getImageText() {
    return Text(
      firstNameController.text[0].toUpperCase() +
          lastNameController.text[0].toUpperCase(),
      style: AppTextStyle().bigTitle.copyWith(color: Colors.white),
    );
  }

  Row detailFieldRow(String title, TextEditingController controller) {
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
            readOnly: true,
          ),
        ),
      ],
    );
  }
}
