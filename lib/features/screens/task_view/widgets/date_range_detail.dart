import 'package:flutter/material.dart';
import 'package:to_do/utils/formatters/formatters.dart';



class DateRangeDetail extends StatelessWidget {
  const DateRangeDetail(
      {super.key,
      required this.dateTimeRange,
      required this.startTime,
      required this.endTime});
  final DateTimeRange dateTimeRange;
//start time
  final TimeOfDay startTime;
//end time
  final TimeOfDay endTime;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Icon(
              Icons.calendar_today,
              color: Colors.grey,
            ),
            const SizedBox(width: 8),
            const Text(
              'From date',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 16),
            Text(
              '${EFormatter.formatMonthDate(dateTimeRange.start)} at ${startTime.format(context)}',
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            const Icon(
              Icons.calendar_today,
              color: Colors.transparent,
            ),
            const SizedBox(width: 8),
            const Text(
              'To date   ',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 16),
            Text(
              '${EFormatter.formatMonthDate(dateTimeRange.end)} at ${endTime.format(context)}',
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ],
    );
  }
}
