import 'package:flutter/material.dart';


class TaskViewLabelWidget extends StatelessWidget {
  const TaskViewLabelWidget({
    super.key,
    required this.heading,
    required this.subText,
    required this.icon,
  });
  final String heading;
  final String subText;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              icon,
              color: Colors.grey,
            ),
            const SizedBox(
              width: 6.0,
            ),
            Text(
              heading,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            )
          ],
        ),
        Text(subText)
      ],
    );
  }
}
