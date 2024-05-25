import 'package:flutter/material.dart';

class PriorityIndicatorContainer extends StatelessWidget {
  const PriorityIndicatorContainer({
    super.key, required this.priority,
  });
 final String priority;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20),
      ),
      child:  Text(
        priority,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}