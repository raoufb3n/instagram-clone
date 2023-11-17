import 'package:flutter/material.dart';
import 'package:instagram_clone/core/utils/Theme/colors.dart';
import 'package:instagram_clone/featurs/splash/presentation/views/widgets/SplachViewBody.dart';

class SplachView extends StatefulWidget {
  const SplachView({super.key});

  @override
  State<SplachView> createState() => _SplachViewState();
}

class _SplachViewState extends State<SplachView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsStyles.white,
      body: SafeArea(child: SplachViewBody()),
    );
  }
}
