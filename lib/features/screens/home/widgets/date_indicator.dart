import 'package:flutter/material.dart';
import 'package:to_do/utils/formatters/formatters.dart';



class DateIndicatorWidget extends StatelessWidget {
  const DateIndicatorWidget({
    super.key, required this.date, required this.icon,
    
  });

  final DateTime date;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 12),
        const SizedBox(width: 5),
        Text(
          EFormatter.formatMonthDate(date),
          style: const TextStyle(color: Colors.grey, fontSize: 12),
        ),
      ],
    );
  }
}
