import 'package:flutter/material.dart';

abstract class ColorsStyles {
  static final TypoColor = Color(0xff000000);
  static final gry = Color(0xffC4C4C4);
  static final white = Color(0xffFFFFFF);
  static final blue = Color(0xff1FA1FF);
  static final red = Color(0xffFE0136);
  static final gradient = LinearGradient(
    colors: [
      Color(0xff7300E4),
      Color(0xffE300A4),
      Color(0xffFFB763),
    ],
  );
  static final gradientTwo = LinearGradient(colors: [
    Color(0xffFEFAF2),
    Color(0xffFBF1F7 ),
    Color(0xffF0F7FE),
  ], stops: [
    0.2,
    0.3,
    0.5
  ], begin: Alignment.topLeft, end: Alignment.topRight);
}
