import 'package:flutter/material.dart';
import 'package:instagram_clone/core/utils/colors.dart';
import 'package:instagram_clone/core/utils/styles.dart';

class CustomProfileButton extends StatelessWidget {
  CustomProfileButton({super.key, required this.label, required this.isFoolow});
  final String label;
  final bool isFoolow;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Text(
        label,
        style: Styles.displayBold13.copyWith(
            fontWeight: FontWeight.w700,
            color: isFoolow ? ColorsStyles.TypoColor : ColorsStyles.white),
      ),
      height: 38,
      elevation: 0,
      highlightElevation: 0,
      minWidth: 170,
      color: isFoolow ? ColorsStyles.gry.withOpacity(0.4) : ColorsStyles.blue,
    );
  }
}
