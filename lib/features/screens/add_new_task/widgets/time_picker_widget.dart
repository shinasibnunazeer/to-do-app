import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do/common/styles/shaded_conatiner.dart';
import 'package:to_do/features/controller/to_do_controller.dart';
import 'package:to_do/utils/const/colors.dart';

class ETimePickerWidget extends StatelessWidget {
  const ETimePickerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = ToDoController.instance;
    return Row(
      children: [
        Expanded(
          child: EShadedContainer(
            child: ListTile(
              title: Obx(() {
                return Text(controller.selectedStartTime.value.format(context));
              }),
              trailing: const Icon(Icons.alarm, color: EColors.primaryColor,),
              onTap: () {
                controller.selectStartTime(context);
              },
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: EShadedContainer(
            child: ListTile(
              title: Obx(() {
                return Text(controller.selectedEndTime.value.format(context));
              }),
              trailing: const Icon(Icons.alarm, color: EColors.primaryColor),
              onTap: () {
                controller.selectEndTime(context);
              },
            ),
          ),
        ),
      ],
    );
  }
}
