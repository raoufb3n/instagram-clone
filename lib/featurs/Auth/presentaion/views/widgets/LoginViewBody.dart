import 'package:flutter/material.dart';
import 'package:instagram_clone/core/utils/colors.dart';
import 'package:instagram_clone/core/utils/styles.dart';
import 'package:instagram_clone/featurs/Auth/presentaion/views/widgets/CustomTextField.dart';
import 'package:instagram_clone/featurs/Auth/presentaion/views/widgets/CutomButton.dart';

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
          SizedBox(
            height: 32,
          ),
          CustomTextField(
            hintText: 'Usernmae,email or mobile number',
          ),
          const SizedBox(
            height: 12,
          ),
          CustomTextField(
            hintText: 'Password',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomButton(
            labelText: 'Log in',
          )
        ]),
      ),
    );
  }
}
