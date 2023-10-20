import 'package:flutter/material.dart';
import 'package:instagram_clone/core/utils/colors.dart';
import 'package:instagram_clone/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.labelText
  });
  final String labelText;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      onPressed: () {},
      color: ColorsStyles.blue,
      minWidth: double.infinity,
      height: 48,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      child: Text(
        labelText,
        style: Styles.titleMeduim14.copyWith(color: ColorsStyles.white),
      ),
    );
  }
}
