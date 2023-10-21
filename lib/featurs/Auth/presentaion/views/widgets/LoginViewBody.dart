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
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          DropdownButton(
              borderRadius: BorderRadius.circular(11),
              hint: Text(
                'English(US)',
                style: Styles.titleMeduim13.copyWith(color: Colors.grey),
              ),
              elevation: 0,
              items: [
                DropdownMenuItem<String>(
                  child: Text(
                    'English(US)',
                    style: Styles.titleMeduim13.copyWith(color: Colors.grey),
                  ),
                  value: 'English(US)',
                ),
                DropdownMenuItem<String>(
                  child: Text(
                    'Arabic(AR)',
                    style: Styles.titleMeduim13.copyWith(color: Colors.grey),
                  ),
                  value: 'Arabic(AR)',
                ),
                DropdownMenuItem<String>(
                  child: Text(
                    'French(FR)',
                    style: Styles.titleMeduim13.copyWith(color: Colors.grey),
                  ),
                  value: 'French(FR)',
                ),
              ],
              onChanged: (p) {}),
          Image.asset(
            'assets/images/instaLgram.png',
            height: 60,
          ),
          SizedBox(
            height: 32,
          ),
          Column(
            children: [
              CustomTextField(
                obsecure: false,
                hintText: 'Usernmae,email or mobile number',
              ),
              const SizedBox(
                height: 12,
              ),
              CustomTextField(
                obsecure: false,
                hintText: 'Password',
              ),
              const SizedBox(
                height: 16,
              ),
              CustomButton(
                onPressed: () {},
                labelText: 'Log in',
                check: false,
              ),
              const SizedBox(
                height: 16,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot password?',
                  style: Styles.titleMeduim14
                      .copyWith(color: ColorsStyles.TypoColor),
                ),
              ),
            ],
          ),
          CustomButton(
            onPressed: () {
              Navigator.of(context).pushNamed('register');
            },
            labelText: 'Create new account',
            check: true,
          )
        ]),
      ),
    );
  }
}
