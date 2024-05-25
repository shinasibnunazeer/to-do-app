import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:to_do/common/styles/shaded_conatiner.dart';
import 'package:to_do/features/controller/to_do_controller.dart';
import 'package:to_do/utils/const/colors.dart';
import 'package:to_do/utils/formatters/formatters.dart';

class EDatePickerWidget extends StatelessWidget {
  const EDatePickerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = ToDoController.instance;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Task Date',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        EShadedContainer(
          child: ListTile(
            title: Obx(() {
              final startDate = controller.selectedDateRange.value.start;
              final endDate = controller.selectedDateRange.value.end;
              return Text('${EFormatter.formatDate(startDate)} - ${EFormatter.formatDate(endDate)}');
            }),
            trailing: const Icon(IconsaxPlusBold.calendar, color: EColors.primaryColor,),
            onTap: () {
              controller.selectDateRange(context);
            },
          ),
        ),
      ],
    );
  }
}
