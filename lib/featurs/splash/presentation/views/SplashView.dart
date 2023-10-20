import 'package:flutter/material.dart';
import 'package:instagram_clone/core/utils/colors.dart';
import 'package:instagram_clone/featurs/splash/presentation/views/widgets/SplachViewBody.dart';

class SplachView extends StatelessWidget {
  const SplachView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsStyles.white,
      body: SafeArea(child: SplachViewBody()),
    );
  }
}
