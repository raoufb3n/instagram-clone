import 'package:flutter/material.dart';
import 'package:instagram_clone/featurs/Reels/prisentation/view/widgets/ReelsViewBody.dart';

class ReelsView extends StatelessWidget {
  const ReelsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: PageView.builder(
            
              scrollDirection: Axis.vertical,
              itemCount: 10,
              itemBuilder: (contex, index) => ReelsViewBody())),
    );
  }
}
