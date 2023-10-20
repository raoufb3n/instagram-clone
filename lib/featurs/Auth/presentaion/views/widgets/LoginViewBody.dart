import 'package:flutter/material.dart';
import 'package:instagram_clone/core/utils/colors.dart';
import 'package:instagram_clone/core/utils/styles.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(gradient: ColorsStyles.gradientTwo),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          Text(
            'English(US)',
            style: Styles.titleMeduim13.copyWith(color: Colors.grey),
          ),
          Image.asset(
            'assets/images/Instagram logo.png',
            height: 60,
          ),
          TextField(
            decoration: InputDecoration(
              
            ),
          )
        ]),
      ),
    );
  }
}
