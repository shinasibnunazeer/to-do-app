

  import 'package:flutter/material.dart';
import 'package:to_do/utils/const/sizes.dart';

const  EdgeInsets pagePadding = EdgeInsets.symmetric(horizontal: ESizes.pagepadding,
        vertical: 10,
        );


bottomSheetPadding(BuildContext context) {
  return EdgeInsets.only(
    top: 0,
    left: 20,
    right: 20,
    bottom: MediaQuery.of(context).viewInsets.bottom + 20,
  );
}
