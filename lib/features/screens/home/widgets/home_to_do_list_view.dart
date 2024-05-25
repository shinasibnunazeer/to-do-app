import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:to_do/features/screens/home/widgets/to_do_tile.dart';
import 'package:to_do/features/controller/to_do_controller.dart';

class EHomeTodoListView extends StatelessWidget {
  const EHomeTodoListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = ToDoController.instance;
    return Obx(() {
      return ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) => const SizedBox(height: 16.0),
        shrinkWrap: true,
        itemCount: controller.filteredToDoList.length,
        itemBuilder: (context, index) {
          return Slidable(
            endActionPane: ActionPane(motion: const StretchMotion(), children: [
              SlidableAction(
                onPressed: (_) {
                  controller.deleteTask(controller.filteredToDoList[index].id);
                },
                icon: Icons.delete,
                backgroundColor: Colors.red,
              )
            ]),
            child: ETodoTile(
              toDoModel: controller.filteredToDoList[index],
            ),
          );
        },
      );
    });
  }
}
