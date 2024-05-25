
import 'package:flutter/material.dart';


class ETaskTextField extends StatelessWidget {
  const ETaskTextField({
    super.key,
    required this.textController,
    required this.labelText,
    required this.titleText,
  });

  final TextEditingController textController;
  final String labelText;
  final String titleText;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titleText,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        TextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          
          },
          cursorColor: Colors.black,
          decoration: InputDecoration(
            hintText: labelText,
         
          ),
          controller: textController,
        ),
      ],
    );
  }
}
