import 'package:flutter/material.dart';

class CustomNavBarItem extends StatelessWidget {
  CustomNavBarItem(
      {super.key,
      required this.icon,
      required this.icon2,
      required this.onPressed,
      required this.selected});
  void Function()? onPressed;
  Widget icon;
  Widget icon2;
  bool selected;
  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: onPressed, icon: selected ? icon2 : icon);
  }
}