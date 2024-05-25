
import 'package:flutter/material.dart';
import 'package:to_do/features/screens/add_new_task/create_task.dart';
import 'package:to_do/utils/const/colors.dart';

class ECreateNewTaskButton extends StatelessWidget {
  const ECreateNewTaskButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
                   showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) => const CreateTaskBottomSheet(),
              );
    // ignore: prefer_const_constructors
    }, child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Create New Task',
              style: TextStyle(
                color: EColors.textWhite,
                fontSize: 18.0,
               
              ),
            ),
            Icon(
              Icons.arrow_forward,
              size: 30,
            )
          ],
        ),
    ),
    );
  }
}
