import 'package:flutter/material.dart';

class CustomNavBarItem extends StatelessWidget {
 const CustomNavBarItem(
      {super.key,
      required this.icon,
      required this.icon2,
      required this.onPressed,
      required this.selected});
 final void Function()? onPressed;
 final  Widget icon;
 final Widget icon2;
 final bool selected;
  @override
  Widget build(BuildContext context) {
    return  IconButton(onPressed: onPressed, icon: selected ? icon2 : icon);
  }
}