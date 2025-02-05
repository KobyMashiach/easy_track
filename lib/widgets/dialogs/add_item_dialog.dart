import 'dart:io';

import 'package:easy_track/core/colors.dart';
import 'package:easy_track/core/general_functions.dart';
import 'package:easy_track/i18n/strings.g.dart';
import 'package:easy_track/models/image_model/image_model.dart';
import 'package:easy_track/widgets/design/fields/app_textfields.dart';
import 'package:easy_track/widgets/dialogs/general_dialog.dart';
import 'package:easy_track/widgets/general/circular_progress_image.dart';
import 'package:flutter/material.dart';
import 'package:kh_easy_dev/services/navigate_page.dart';
import 'package:intl/intl.dart' as intl;

class AddItemDialog extends StatefulWidget {
  final Function(File? image, DateTime date, ImageModel? imageModel)
      saveCategory;
  final ImageModel? imageModel;
  const AddItemDialog({super.key, required this.saveCategory, this.imageModel});

  @override
  State<AddItemDialog> createState() => _AddItemDialogState();
}

class _AddItemDialogState extends State<AddItemDialog> {
  late TextEditingController selectedDateController;
  late DateTime selectedDate = DateTime.now();
  File? file;
  Image? image;

  @override
  void initState() {
    super.initState();
    selectedDateController = TextEditingController();
    initDialogFields();
  }

  void initDialogFields() {
    selectedDateController.text = intl.DateFormat('dd/MM/yyyy')
        .format(widget.imageModel?.date ?? selectedDate);
    if (widget.imageModel?.date != null) {
      selectedDate = widget.imageModel!.date!;
    }
    if (widget.imageModel?.imageUrl != null) {
      image = Image.network(
        widget.imageModel!.imageUrl!,
        fit: BoxFit.cover,
        loadingBuilder: (BuildContext context, Widget child,
            ImageChunkEvent? loadingProgress) {
          if (loadingProgress == null) {
            return child;
          } else {
            return const Center(child: CircularProgressImage());
          }
        },
        errorBuilder:
            (BuildContext context, Object error, StackTrace? stackTrace) {
          return const Center(
              child: Icon(Icons.image_not_supported,
                  size: 50, color: Colors.grey));
        },
      );
    }
  }

  @override
  void dispose() {
    super.dispose();
    selectedDateController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double imageSize = 75;
    return generalDialog(
      title: widget.imageModel != null ? t.edit_item : t.add_item,
      child: Column(
        spacing: 28,
        children: [
          const SizedBox.shrink(),
          GestureDetector(
            onTap: () async {
              file = await pickImageImagePicker();
              if (file != null) {
                setState(() {
                  image = Image.file(file!, fit: BoxFit.cover);
                });
              }
            },
            child: Container(
              height: 2 * imageSize,
              width: 3 * imageSize,
              decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(30)),
              child: image != null
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(30), child: image)
                  : Icon(
                      Icons.add_photo_alternate_outlined,
                      size: imageSize,
                      color: Colors.white,
                    ),
            ),
          ),
          AppTextField(
            hintText: t.date,
            controller: selectedDateController,
            readOnly: true,
            isRequired: true,
            textInputAction: TextInputAction.next,
            child: IconButton(
                onPressed: () => onDatePickerTap(),
                icon: const Icon(Icons.calendar_month)),
          ),
        ],
      ),
      okButtonOnTap: () {
        widget.saveCategory.call(file, selectedDate, widget.imageModel);
        KheasydevNavigatePage().popDuration(context);
      },
    );
  }

  Future<void> onDatePickerTap() async {
    DateTime initialDate = DateTime.now();
    if (selectedDateController.text.isNotEmpty) {
      try {
        initialDate =
            intl.DateFormat('dd/MM/yyyy').parse(selectedDateController.text);
      } catch (e) {
        initialDate = DateTime.now();
      }
    }

    DateTime? selectedNewDate = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(DateTime.now().year + 1),
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
    );

    if (selectedNewDate != null) {
      selectedDate = selectedNewDate;
      setState(() {
        selectedDateController.text =
            intl.DateFormat('dd/MM/yyyy').format(selectedNewDate);
      });
    }
  }
}
