import 'dart:io';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/rendering.dart';
import 'package:easy_track/core/colors.dart';
import 'package:easy_track/core/general_functions.dart';
import 'package:easy_track/core/global_vars.dart';
import 'package:easy_track/core/text_styles.dart';
import 'package:easy_track/i18n/strings.g.dart';
import 'package:easy_track/widgets/design/fields/app_textfields.dart';
import 'package:easy_track/widgets/general/appbar.dart';
import 'package:easy_track/widgets/general/bottom_navigation_bars/app_buttons_bottom_navigation_bar.dart';

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
  final GlobalKey _avatarKey = GlobalKey();

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
    emailController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    super.dispose();
  }

  void getUserData() {
    emailController.text = globalUser.email;
    firstNameController.text = globalUser.firstName ?? "";
    lastNameController.text = globalUser.lastName ?? "";
  }

  Future<File> captureAvatar() async {
    RenderRepaintBoundary boundary =
        _avatarKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
    ui.Image image = await boundary.toImage();
    ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    Uint8List pngBytes = byteData!.buffer.asUint8List();

    final directory = await getApplicationDocumentsDirectory();
    final filePath = "${directory.path}/avatar.png";
    File imageFile = File(filePath);
    await imageFile.writeAsBytes(pngBytes);
    return imageFile;
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
        activeButtonOnTap: () async {
          if (globalUser.picture == null && file == null) {
            file = await captureAvatar();
          }
          widget.onSave(
              firstNameController.text, lastNameController.text, file);
        },
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
            child:
                const Icon(Icons.highlight_remove_sharp, color: Colors.white),
          ),
        ),
        RepaintBoundary(
          key: _avatarKey,
          child: CircleAvatar(
            radius: 80,
            backgroundColor: AppColors.shadowColor,
            foregroundImage: file != null
                ? FileImage(file!)
                : (globalUser.picture != null
                    ? NetworkImage(globalUser.picture!)
                    : null),
            child: image == null &&
                    globalUser.picture == null &&
                    firstNameController.text.isNotEmpty &&
                    lastNameController.text.isNotEmpty
                ? getImageText()
                : null,
          ),
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
              child: const Icon(Icons.add_a_photo, color: Colors.white),
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
      style:
          AppTextStyle().bigTitle.copyWith(color: Colors.white, fontSize: 100),
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
            onChanged: (v) => setState(() {}),
          ),
        ),
      ],
    );
  }
}
