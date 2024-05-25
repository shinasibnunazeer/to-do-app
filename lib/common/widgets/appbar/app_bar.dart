import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do/common/widgets/circle_avatar/user_circle_avatar.dart';
import 'package:to_do/utils/const/colors.dart';
import 'package:to_do/utils/const/sizes.dart';

class EAppbar extends StatelessWidget implements PreferredSizeWidget {
  const EAppbar(
      {super.key,
      this.title,
      this.leadingIcon,
      this.trailing,});

  final Widget? title;
  final IconData? leadingIcon;
  final Widget? trailing;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: EColors.white,
      child: SafeArea(
        child: Padding(
            padding: const EdgeInsets.only(
               left: ESizes.pagepadding,),
            child: Row(
              children: [
             leadingIcon != null ?   Icon(
                  leadingIcon,
                  size: 30,
                ) :
               IconButton(
                  onPressed: () => Get.back(),
                  icon: const Icon(Icons.arrow_back, size: 30, color: Colors.black),
                ), 
                //sopace
                const SizedBox(width: 6),
                title ?? Container(),
                const Spacer(),
                Expanded(child: trailing ?? const EUserCircleAvatar()),
              ],
            )),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(90);
}

//  AppBar(
//              centerTitle: false,
//               //auto lead
//               automaticallyImplyLeading: false,
//               leading: shoBackarrow ? IconButton(onPressed:()=> Get.back(), icon: const Icon(Icons.arrow_back_ios)):
//               leadingIcon != null ?
//               IconButton(onPressed:leadingOnPressed, icon:  Icon(leadingIcon, color: Colors.black, size: 30,)) :null,
//               title: title,
            
//             ),