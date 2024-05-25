import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do/common/styles/gradient_continer.dart';
import 'package:to_do/features/controller/to_do_controller.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
class EHomeHeaderContainer extends StatelessWidget {
  const EHomeHeaderContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = ToDoController.instance;
    return GradientContainer(
        child: Container(
      padding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
      child:  Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                 () {
                  return Text(
                     controller.toDoList.length.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 60,
                    ),
                  );
                }
              ),
              const Text(
                "Total Number of Task",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ),
            ],
          ),
           const Icon(
            IconsaxPlusBold.note,
            color: Colors.grey,
            
            size: 80,
          ),
        ],
      ),
    ));
  }
}
