import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do/features/controller/to_do_controller.dart';
import 'package:to_do/utils/const/colors.dart';
import 'package:to_do/utils/const/const_strings.dart';

class EPrioritySelectorWidget extends StatelessWidget {
  const EPrioritySelectorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _buildPriorityButton(Priority.all),
          _buildPriorityButton(Priority.high),
          _buildPriorityButton(Priority.medium),
          _buildPriorityButton(Priority.low),
        ],
      ),
    );
  }

  Widget _buildPriorityButton(String priority) {
    final controller = ToDoController.instance;

    return Obx(() {
      bool isSelected = controller.selectedPriority.value == priority;
      return GestureDetector(
        onTap: () {
          controller.updatePriority(priority);
        },
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          decoration: BoxDecoration(
            color: isSelected ? EColors.primaryColor : EColors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: EColors.primaryColor),
          ),
          child: Text(
            priority,
            style: TextStyle(
              color: isSelected ? Colors.white : EColors.primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
    });
  }
}
