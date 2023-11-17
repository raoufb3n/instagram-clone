import 'package:flutter/material.dart';
import 'package:instagram_clone/Layout.dart';
import 'package:instagram_clone/core/utils/Theme/routes.dart';
import 'package:instagram_clone/featurs/Auth/presentaion/views/LoginView.dart';
import 'package:instagram_clone/featurs/Auth/presentaion/views/RegisterView.dart';
import 'package:instagram_clone/featurs/Home/views/HomeView.dart';
import 'package:instagram_clone/featurs/Profile/presentation/views/ProfileView.dart';
import 'package:instagram_clone/featurs/splash/presentation/views/SplashView.dart';

void main() {
  runApp(InstagramClone());
}

class InstagramClone extends StatelessWidget {
  const InstagramClone({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Routes.splash: (context) => SplachView(),
        Routes.login: (context) => LoginView(),
        Routes.register: (context) => RegisterView(),
        Routes.home: (context) => HomeView(),
        Routes.profile: (context) => ProfileView()
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const LayoutWidget(),
    );
  }
}
