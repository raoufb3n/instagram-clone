import 'package:flutter/material.dart';
import 'package:instagram_clone/Layout.dart';
import 'package:instagram_clone/core/utils/Theme/routes.dart';
import 'package:instagram_clone/featurs/Auth/presentaion/views/LoginView.dart';
import 'package:instagram_clone/featurs/Auth/presentaion/views/RegisterView.dart';
import 'package:instagram_clone/featurs/Home/views/HomeView.dart';
import 'package:instagram_clone/featurs/Profile/presentation/views/ProfileView.dart';
import 'package:instagram_clone/featurs/splash/presentation/views/SplashView.dart';

void main() {
  runApp(const InstagramClone());
}

class InstagramClone extends StatelessWidget {
  const InstagramClone({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Routes.splash: (context) =>const SplachView(),
        Routes.login: (context) =>const LoginView(),
        Routes.register: (context) =>const RegisterView(),
        Routes.home: (context) =>const HomeView(),
        Routes.profile: (context) =>const ProfileView(),
        Routes.layout: (context) =>const LayoutWidget(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const SplachView(),
    );
  }
}
