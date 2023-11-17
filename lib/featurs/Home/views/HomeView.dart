import 'package:flutter/material.dart';
import 'package:instagram_clone/core/utils/Theme/colors.dart';
import 'package:instagram_clone/featurs/Home/views/widgets/HomeViewBody.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsStyles.white,
      body: SafeArea(child:const HomeViewBody()),
      
    );
  }
}
