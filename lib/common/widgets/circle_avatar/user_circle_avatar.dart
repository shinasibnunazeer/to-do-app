



import 'package:flutter/material.dart';
import 'package:to_do/utils/const/colors.dart';
import 'package:to_do/utils/const/image_strings.dart';

class EUserCircleAvatar extends StatelessWidget {
  const EUserCircleAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundColor: EColors.white,
      child: ClipOval(
        child: Image.asset(
          EImageStrings.userImage,
          fit: BoxFit.cover,
          width: 40,
          height: 40,
        ),
      ),
      
      );
  }
}

