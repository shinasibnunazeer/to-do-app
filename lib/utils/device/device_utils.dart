

import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class DeviceUtils {
  static void hideKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

//set status bar color
  static Future<void> setStatusBarColor(Color color) async {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: color,
    ));
  }

//is landscape
  static bool isLandscapeOrinetation(BuildContext context) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom == 0;
  }

  static bool isPortOrinetation(BuildContext context) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom != 0;
  }

//set full screen
  static Future<void> setFullScreen(bool enable) async {
    await SystemChrome.setEnabledSystemUIMode(
        enable ? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge);
  }

//get screen height
  static double getScreenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

//get screen width
  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  //get pixer ratio
  static double getPixelRatio(BuildContext context) {
    return MediaQuery.of(context).devicePixelRatio;
  }

  //status bar height
  static double getStatusBarHeight(BuildContext context) {
    return MediaQuery.of(context).padding.top;
  }

  //bottom bar height
  static double getBottomBarHeight(BuildContext context) {
    return kBottomNavigationBarHeight;
  }

//navigation bar height
  static double getNavigationBarHeight(BuildContext context) {
    return kBottomNavigationBarHeight;
  }

  //appbar
  static double getAppBarHeight() {
    return kToolbarHeight;
  }

  //key board height
  static double getKeyboardHeight(BuildContext context) {
    return MediaQuery.of(context).viewInsets.bottom;
  }

//is keyboard visible
  static bool isKeyboardVisible(BuildContext context) {
    return MediaQuery.of(context).viewInsets.bottom > 0;
  }

//is physical device
  static Future<bool> isPhysicalDevice() async {
    return defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS;
  }

  //vibrate
  static Future<void> vibrate() async {
    HapticFeedback.vibrate();
  }

//set screen orientation
  static Future<void> setScreenOrientation(
      DeviceOrientation orientation) async {
    await SystemChrome.setPreferredOrientations([orientation]);
  }

  //hide status bar
  static Future<void> hideStatusBar() async {
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: []);
  }

//show statusbar
  static Future<void> showStatusBar() async {
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }

//HAS INTERNET
  static Future<bool> hasInternet() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }
  }

//BOOL IS IOS
  static bool isIOS() {
    return defaultTargetPlatform == TargetPlatform.iOS;
  }

//BOOL IS ANDROID
  static bool isAndroid() {
    return defaultTargetPlatform == TargetPlatform.android;
  }

}