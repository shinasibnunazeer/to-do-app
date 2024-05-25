import 'package:flutter/material.dart';
class ToDoModel {
  final String taskName;
  final String description;
  final String priority;
  final DateTimeRange dateRange;
  final TimeOfDay startTime;
  final TimeOfDay endTime;
  final DateTime createdAt; // New field for creation time
  final String id;

  ToDoModel({
    required this.taskName,
    required this.startTime,
    required this.id,
    required this.endTime,
    required this.description,
    required this.dateRange,
    required this.priority,
    required this.createdAt, // Updated constructor to accept createdAt
  });

  // Serialize to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'taskName': taskName,
      'description': description,
      'priority': priority,
      'dateRange': {
        'start': dateRange.start.toIso8601String(),
        'end': dateRange.end.toIso8601String(),
      },
      'startTime': {
        'hour': startTime.hour,
        'minute': startTime.minute,
      },
      'endTime': {
        'hour': endTime.hour,
        'minute': endTime.minute,
      },
      'createdAt': createdAt.toIso8601String(), // Serialize createdAt
    };
  }

  // Deserialize from JSON
  factory ToDoModel.fromJson(Map<String, dynamic> json) {
    return ToDoModel(
      id: json['id'],
      taskName: json['taskName'],
      description: json['description'],
      priority: json['priority'],
      dateRange: DateTimeRange(
        start: DateTime.parse(json['dateRange']['start']),
        end: DateTime.parse(json['dateRange']['end']),
      ),
      startTime: TimeOfDay(
        hour: json['startTime']['hour'],
        minute: json['startTime']['minute'],
      ),
      endTime: TimeOfDay(
        hour: json['endTime']['hour'],
        minute: json['endTime']['minute'],
      ),
      createdAt: DateTime.parse(json['createdAt']), // Deserialize createdAt
    );
  }
}

