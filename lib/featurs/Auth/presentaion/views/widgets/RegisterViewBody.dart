import 'package:flutter/material.dart';
import 'package:instagram_clone/core/utils/Theme/routes.dart';
import 'package:instagram_clone/featurs/Auth/presentaion/views/widgets/PageViewItem.dart';

class RegisterViewBody extends StatefulWidget {
  RegisterViewBody({super.key});

  @override
  State<RegisterViewBody> createState() => _RegisterViewBodyState();
}

class _RegisterViewBodyState extends State<RegisterViewBody> {
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: [
        PageViewItem(
          hintText: 'Full name',
          onPressed: () {
            setState(() {
              _pageController.nextPage(
                  duration: Duration(seconds: 1), curve: Curves.easeIn);
            });
          },
          titleText: 'Whats your name?',
          visible: false,
        ),
        PageViewItem(
          hintText: 'Password',
          onPressed: () {
            setState(() {
              _pageController.nextPage(
                  duration: Duration(seconds: 1), curve: Curves.easeIn);
            });
          },
          titleText: 'Create a password',
          visible: true,
          visibleText:
              'Create a password with at least 6 letters or numbers.It should be something others can not guess.',
        ),
        PageViewItem(
          hintText: 'username',
          onPressed: () {
            setState(() {
              _pageController.nextPage(
                  duration: Duration(seconds: 1), curve: Curves.easeIn);
            });
          },
          titleText: 'Create a username',
          visible: true,
          visibleText:
              'Add a username or use our suggestion.You can change this at any time.',
        ),
        PageViewItem(
          hintText: 'email',
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(Routes.home);
          },
          titleText: 'What is your email?',
          visible: true,
          visibleText:
              'Enter the email where you can be contacted.No one will see this on your profile.',
        ),
      ],
    );
  }
}
