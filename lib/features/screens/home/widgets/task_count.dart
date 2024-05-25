import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:to_do/features/controller/to_do_controller.dart';
import 'package:to_do/utils/const/colors.dart';


class ETextTaskCount extends StatelessWidget {
  const ETextTaskCount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = ToDoController.instance;
    return  Row(
      
      children: [
        const Text(
          'Task List',
          style: TextStyle(
            color: EColors.textPrimary,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        //space
        const SizedBox(width: 8.0),
        Obx(
          () {
            return Text(
              '(Total ${controller.filteredToDoList.length})',
              style: const TextStyle(
                color: EColors.textsecondary,
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            );
          }
        ),
      ],
    );
  }
}
