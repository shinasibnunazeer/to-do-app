
import 'package:flutter/material.dart';


class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
     
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.black45,
            Colors.black,
          ],
          begin: FractionalOffset(0.0, 0.0),
          end: FractionalOffset(0.0, 1.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp,
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: child,);}
}