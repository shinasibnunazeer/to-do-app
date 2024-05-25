import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:to_do/common/widgets/container/priority_indicator_container.dart';
import 'package:to_do/features/model/to_do_model.dart';
import 'package:to_do/features/screens/home/widgets/date_indicator.dart';
import 'package:to_do/features/screens/task_view/task_view.dart';

class ETodoTile extends StatelessWidget {
  const ETodoTile({super.key, required this.toDoModel});

  final ToDoModel toDoModel;

  @override
  Widget build(BuildContext context) {
  
    return GestureDetector(
      onTap: () {
        //go to task view
        Get.to(()=>TaskView(
          toDoModel: toDoModel,
        ));
      },
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              toDoModel.taskName,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                DateIndicatorWidget(date: toDoModel.dateRange.start,icon: IconsaxPlusBold.calendar_search,),
                const SizedBox(width: 10),
                 DateIndicatorWidget(date: toDoModel.dateRange.end,
                 icon: Icons.flag_outlined,
                 
                 ),
                const Spacer(),
                 PriorityIndicatorContainer(
                  priority: toDoModel.priority,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


