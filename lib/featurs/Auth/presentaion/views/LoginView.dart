import 'package:flutter/material.dart';
import 'package:instagram_clone/featurs/Auth/presentaion/views/widgets/LoginViewBody.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: LoginViewBody()),
    );
  }
}
