import 'package:flutter/material.dart';
import 'package:instagram_clone/core/utils/Theme/styles.dart';

class ProfileStats extends StatelessWidget {
 const ProfileStats({super.key, required this.numOne, required this.numTwo});
  final String numOne;
  final String numTwo;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Text(
            numOne,
            style: Styles.displayBold16,
          ),
          Text(
            numTwo,
            style: Styles.titleMeduim14.copyWith(fontSize: 15),
          )
        ],
      ),
    );
  }
}
