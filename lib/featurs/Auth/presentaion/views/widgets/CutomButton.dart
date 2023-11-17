import 'package:flutter/material.dart';
import 'package:instagram_clone/core/utils/Theme/colors.dart';
import 'package:instagram_clone/core/utils/Theme/styles.dart';


class CustomButton extends StatelessWidget {
  CustomButton({super.key, required this.labelText, required this.check,required this.onPressed});
  final String labelText;
  bool check;
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      highlightElevation: 0,
      elevation: 0,
      onPressed: onPressed,
      color: check ? ColorsStyles.blue.withOpacity(0) : ColorsStyles.blue,
      minWidth: double.infinity,
      height: 49,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
          side: BorderSide(
              color: check ? ColorsStyles.blue : Colors.green.withOpacity(0))),
      child: Text(
        labelText,
        style: Styles.titleMeduim14
            .copyWith(color: check ? ColorsStyles.blue : ColorsStyles.white),
      ),
    );
  }
}
