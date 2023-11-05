import 'package:flutter/material.dart';
import 'package:instagram_clone/featurs/Profile/presentation/views/widgets/ProfileViewBody.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SafeArea(child: ProfileViewBody()),
    );
  }
}
