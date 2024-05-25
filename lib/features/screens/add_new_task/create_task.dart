import 'package:flutter/material.dart';
import 'package:to_do/common/styles/padding/paddings.dart';
import 'package:to_do/common/widgets/container/priority_selector.dart';
import 'package:to_do/features/controller/to_do_controller.dart';
import 'package:to_do/features/screens/add_new_task/widgets/create_task_button.dart';
import 'package:to_do/features/screens/add_new_task/widgets/date_picker_widget.dart';
import 'package:to_do/features/screens/add_new_task/widgets/info_text.dart';
import 'package:to_do/features/screens/add_new_task/widgets/task_text_field.dart';
import 'package:to_do/features/screens/add_new_task/widgets/time_picker_widget.dart';
import 'package:to_do/utils/const/colors.dart';

class CreateTaskBottomSheet extends StatelessWidget {
  const CreateTaskBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    //form key

      final controller = ToDoController.instance;
    return Container(
      color: EColors.white,
      child: Padding(
        padding: bottomSheetPadding(context),
        child: SingleChildScrollView(
          child: Form(
            key: controller.formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Create New Task',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 30),
                ETaskTextField(
                  textController: controller.taskNameController,
                  labelText: 'Task Name (Mandatory)',
                  titleText: 'Task Name',
                ),
                const SizedBox(height: 20),
                ETaskTextField(
                    textController: controller.descriptionController,
                    labelText: "Enter Description (Mandatory)",
                    titleText: "Description"),
                //max 250 letters
                const InfoText(),
                const SizedBox(height: 20),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Priority',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    //space
                    SizedBox(
                      height: 5,
                    ),
                    EPrioritySelectorWidget(),
                  ],
                ),
            
                const SizedBox(height: 20),
                const EDatePickerWidget(),
                const SizedBox(height: 10),
                const ETimePickerWidget(),
                const InfoText(
                  infoText: "Date and Timefield is mandatory",
                  mainAxisAlignment: MainAxisAlignment.start,
                ),  
                  
                const SizedBox(height: 20),
                const CreateTaskButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

