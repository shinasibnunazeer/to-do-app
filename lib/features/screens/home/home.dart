import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do/common/styles/padding/paddings.dart';
import 'package:to_do/common/widgets/appbar/app_bar.dart';
import 'package:to_do/common/widgets/container/priority_selector.dart';
import 'package:to_do/features/controller/to_do_controller.dart';
import 'package:to_do/features/screens/home/widgets/home_header_container.dart';
import 'package:to_do/features/screens/home/widgets/home_to_do_list_view.dart';
import 'package:to_do/features/screens/home/widgets/new_task_button.dart';
import 'package:to_do/features/screens/home/widgets/task_count.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ToDoController());

    return const Scaffold(
      appBar: EAppbar(
        title: Text('To-Do List',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
        leadingIcon: Icons.menu_rounded,
      ),

      //body part
      body: SingleChildScrollView(
        //
        padding: pagePadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            EHomeHeaderContainer(),
            SizedBox(height: 8.0),
            ECreateNewTaskButton(),
            SizedBox(height: 30.0),
            ETextTaskCount(),
            SizedBox(height: 8.0),
            EPrioritySelectorWidget(),
            SizedBox(height: 16.0),
            //listview builder
            EHomeTodoListView()
          ],
        ),
      ),
    );
  }
}
