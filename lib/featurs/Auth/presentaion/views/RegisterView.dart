import 'package:flutter/material.dart';
import 'package:instagram_clone/featurs/Auth/presentaion/views/widgets/RegisterViewBody.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
     
      body: SafeArea(child: RegisterViewBody()),
    );
  }
}
