import 'package:flutter/material.dart';
import 'package:instagram_clone/featurs/Story/Presentation/view/widgets/StoryViewBody.dart';

class StoryView extends StatelessWidget {
  const StoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: StoryViewBody()),
    );
  }
}
