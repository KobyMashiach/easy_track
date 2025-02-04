import 'dart:io';

import 'package:easy_track/core/colors.dart';
import 'package:easy_track/i18n/strings.g.dart';
import 'package:easy_track/widgets/design/fields/app_textfields.dart';
import 'package:easy_track/widgets/dialogs/general_dialog.dart';
import 'package:flutter/material.dart';
import 'package:kh_easy_dev/services/navigate_page.dart';
import 'package:intl/intl.dart' as intl;

class AddItemDialog extends StatefulWidget {
  final Function(File image, DateTime date) saveCategory;
  const AddItemDialog({super.key, required this.saveCategory});

  @override
  State<AddItemDialog> createState() => _AddItemDialogState();
}

class _AddItemDialogState extends State<AddItemDialog> {
  late TextEditingController selectedDateController;
  late DateTime? selectedDate;

  @override
  void initState() {
    super.initState();
    selectedDateController = TextEditingController();
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
      title: t.add_item,
      child: Column(
        spacing: 28,
        children: [
          const SizedBox.shrink(),
          Container(
            height: 2 * imageSize,
            width: 3 * imageSize,
            decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: const BorderRadius.all(Radius.circular(30))),
            child: Icon(
              Icons.add_photo_alternate_outlined,
              size: imageSize,
              color: Colors.white,
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
        // widget.saveCategory.call(categoryName.text);
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
