import 'package:flutter/material.dart';
import 'package:instagram_clone/core/utils/colors.dart';
import 'package:instagram_clone/core/utils/styles.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    required this.hintText,
    this.obsecure,
    super.key,
  });
  final String hintText;
  bool? obsecure = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obsecure ?? false,
      decoration: InputDecoration(
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
