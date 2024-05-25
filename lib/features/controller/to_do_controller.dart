import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:to_do/features/model/to_do_model.dart';
import 'package:to_do/utils/const/colors.dart';
import 'package:to_do/utils/const/const_strings.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:uid/uid.dart';

class ToDoController extends GetxController {
  static ToDoController get instance => Get
      .find(); //by this method getx fill find the prevoiusly created object for this class

  GetStorage storage = GetStorage(kBucketName); //init local stoage bucket

  @override
  void onInit() {
    loadTodoDataList(); //at the initial stage this will get data from local strage only one time
    // TODO: implement onInit
    super.onInit();
  }

  final TextEditingController taskNameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final List<ToDoModel> toDoList = <ToDoModel>[].obs;
  Rx<String> selectedPriority = Priority.high.obs;
  Rx<DateTimeRange> selectedDateRange =
      DateTimeRange(start: DateTime.now(), end: DateTime.now()).obs;
  Rx<TimeOfDay> selectedStartTime = const TimeOfDay(hour: 8, minute: 30).obs;
  Rx<TimeOfDay> selectedEndTime = const TimeOfDay(hour: 18, minute: 30).obs;
  //form key
  final formKey = GlobalKey<FormState>();

  //update
  void updatePriority(String value) {
    selectedPriority.value = value;
  }

//to select date range

  Future<void> selectDateRange(BuildContext context) async {
    // final DateTimeRange? pickedRange = await showDateRangePicker(
    //   context: context,
    //   firstDate: DateTime.now().subtract(const Duration(days: 365)),
    //   lastDate: DateTime.now().add(const Duration(days: 365)),
    // );

    // if (pickedRange != null) {
    //   selectedDateRange.value = pickedRange;
    // }
    //
    var results = await showCalendarDatePicker2Dialog(
      context: context,
      config: CalendarDatePicker2WithActionButtonsConfig(
        selectedDayHighlightColor: EColors.primaryColor,
        calendarType: CalendarDatePicker2Type.range,
      ),
      dialogSize: const Size(325, 400),
      value: [
        selectedDateRange.value.start,
      ],
      borderRadius: BorderRadius.circular(15),
    );

    if (results != null) {
      selectedDateRange.value =
          DateTimeRange(start: results[0]!, end: results[1]!);
    }
  }

  //to select start and end time

  Future<void> selectStartTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: selectedStartTime.value,
    );

    if (pickedTime != null) {
      selectedStartTime.value = pickedTime;
    }
  }

  Future<void> selectEndTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
  
      context: context,
      initialTime: selectedEndTime.value,
    );

    if (pickedTime != null) {
      selectedEndTime.value = pickedTime;
    }
  }

  Future<void> saveTodoDataList() async {
    await storage.write(kKeyToStorage, toDoList);
  }

  void addTodo() async {
    final ToDoModel toDoModel = ToDoModel(
      id: UId.getId(),
      createdAt: DateTime.now(),
      taskName: taskNameController.text,
      description: descriptionController.text,
      priority: selectedPriority.value,
      dateRange: selectedDateRange.value,
      startTime: selectedStartTime.value,
      endTime: selectedEndTime.value,
    );

    toDoList.add(toDoModel);
    await saveTodoDataList();
    //clear controllers
    taskNameController.clear();
    descriptionController.clear();
    Get.back();
  }

  //delete
  void deleteTask(String id) {
    toDoList.removeWhere((item) => item.id == id);
    saveTodoDataList();
  }



  void loadTodoDataList() {
    if (storage.hasData(kKeyToStorage)) {
      final List<dynamic> data = storage.read(kKeyToStorage);
       
      

      toDoList.assignAll(data
          .cast<Map<String, dynamic>>()
          .map((e) => ToDoModel.fromJson(e))
          .toList());
 
 //sort
      

    }
  }

//filter by priority
  List<ToDoModel> get filteredToDoList {
    // Sort the toDoList by createdAt time (newer first)
  
        List<ToDoModel> sortedList = List.from(toDoList);
    sortedList.sort((a, b) => b.createdAt.compareTo(a.createdAt));

    // If priority is equal to all, return all sorted by createdAt
    if (selectedPriority.value == Priority.all) {
      return sortedList;
    } else {
      // Otherwise, filter by selected priority and return sorted by createdAt
      return sortedList
          .where((element) => element.priority == selectedPriority.value)
          .toList();
    }
  }
}
