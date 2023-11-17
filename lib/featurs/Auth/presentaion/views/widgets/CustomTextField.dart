import 'package:flutter/material.dart';
import 'package:instagram_clone/core/utils/Theme/colors.dart';
import 'package:instagram_clone/core/utils/Theme/styles.dart';


class CustomTextField extends StatelessWidget {
  CustomTextField(
      {required this.hintText,
      this.obsecure,
      super.key,
      this.icon,
      this.onPressed,
      this.controller});
  final String hintText;
  bool? obsecure = false;
  void Function()? onPressed;
  IconData? icon;
  TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: obsecure! ? controller : TextEditingController(),
      obscureText: obsecure ?? false,
      decoration: InputDecoration(
          suffix: obsecure!
              ? IconButton(
                  onPressed: onPressed,
                  icon: Icon(icon!),
                  iconSize: 5,
                )
              : SizedBox(
                  height: 5,
                ),
          hintText: hintText,
          hintStyle: Styles.titleMeduim14
              .copyWith(color: ColorsStyles.gry, fontSize: 15),
          filled: true,
          fillColor: ColorsStyles.white,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(13)),
              borderSide: BorderSide(color: ColorsStyles.gry)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(13)),
              borderSide: BorderSide(color: ColorsStyles.blue))),
    );
  }
}
