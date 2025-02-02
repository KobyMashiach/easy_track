import 'package:easy_track/i18n/strings.g.dart';
import 'package:easy_track/widgets/design/fields/app_textfields.dart';
import 'package:easy_track/widgets/dialogs/general_dialog.dart';
import 'package:flutter/material.dart';
import 'package:kh_easy_dev/services/navigate_page.dart';

class AddCategoryDialog extends StatefulWidget {
  final Function(String name) saveCategory;
  const AddCategoryDialog({super.key, required this.saveCategory});

  @override
  State<AddCategoryDialog> createState() => _AddCategoryDialogState();
}

class _AddCategoryDialogState extends State<AddCategoryDialog> {
  late TextEditingController categoryName;

  @override
  void initState() {
    super.initState();
    categoryName = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    categoryName.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return generalDialog(
      title: t.add_category,
      child: AppTextField(
        hintText: t.category_name,
        controller: categoryName,
      ),
      okButtonOnTap: () {
        widget.saveCategory.call(categoryName.text);
        KheasydevNavigatePage().popDuration(context);
      },
    );
  }
}
