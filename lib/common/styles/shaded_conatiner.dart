import 'package:flutter/material.dart';
import 'package:to_do/utils/const/colors.dart';



class EShadedContainer extends StatelessWidget {
  const EShadedContainer({
    super.key,
    this.child,
  });

 
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
          //border
      decoration: BoxDecoration( 
        color: EColors.greyConatiner,
        border: Border.all(color: EColors.greyConatiner),
        borderRadius: BorderRadius.circular(10),
      ),
    
      child:child,
    );
  }
}