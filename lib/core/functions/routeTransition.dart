import 'package:flutter/material.dart';

Route _createRoute(Widget Screen) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Screen,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.easeInOutCubic;
      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(position: animation.drive(tween),
      child: child,);
    },
  );
}
