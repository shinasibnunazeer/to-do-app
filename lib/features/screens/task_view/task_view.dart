import 'package:flutter/material.dart';
import 'package:to_do/common/widgets/appbar/app_bar.dart';
import 'package:to_do/features/model/to_do_model.dart';
import 'package:to_do/features/screens/task_view/widgets/date_range_detail.dart';
import 'package:to_do/features/screens/task_view/widgets/task_view_label.dart';
import 'package:to_do/utils/const/sizes.dart';

class TaskView extends StatelessWidget {
  const TaskView({super.key, required this.toDoModel});
  final ToDoModel toDoModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EAppbar(
        title: Text("Task View",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(ESizes.pagepadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TaskViewLabelWidget(
              heading: "TaskName",
              icon: Icons.menu,
              subText: toDoModel.taskName,
            ),
            const SizedBox(
              height: 32.0,
            ),
            TaskViewLabelWidget(
              heading: "Description",
              icon: Icons.menu_book_rounded,
              subText: toDoModel.description,
            ),
            const SizedBox(
              height: 32.0,
            ),
            Row(
              children: [
                const Icon(
                  Icons.flag,
                  color: Colors.grey,
                ),
                const SizedBox(
                  width: 6.0,
                ),
                RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.black, // Set your desired color
                    ),
                    children: [
                      TextSpan(
                        text: toDoModel.priority,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const TextSpan(
                        text: " Priority",
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 32.0,
            ),
            DateRangeDetail(
              dateTimeRange: toDoModel.dateRange,
              startTime: toDoModel.startTime,
              endTime: toDoModel.endTime,
            )
          ],
        ),
      ),
    );
  }
}
