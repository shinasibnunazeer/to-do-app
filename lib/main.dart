import 'package:to_do/app.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:to_do/utils/const/const_strings.dart';

void main() async {
  await GetStorage.init(kBucketName); // to initialize the local storage
  runApp(const App());
}


