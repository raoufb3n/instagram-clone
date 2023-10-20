import 'package:flutter/material.dart';
import 'package:instagram_clone/featurs/splash/presentation/views/SplashView.dart';

void main() {
  runApp(InstagramClone());
}

class InstagramClone extends StatelessWidget {
  const InstagramClone({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: SplachView(),
    );
  }
}
