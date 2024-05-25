


import 'package:flutter/material.dart';
import 'package:to_do/features/controller/to_do_controller.dart';

class CreateTaskButton extends StatelessWidget {
  const CreateTaskButton({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    
    final controller = ToDoController.instance;
    return ElevatedButton(
      onPressed: () {
        //validate form key
        if (!controller.formKey.currentState!.validate()) {
          return;
        }
      
        controller.addTodo();
        
        // Handle task creation logic here
      },
      child: const Center(
        child: Text('Create New Task'),
      ),
    );
  }
}