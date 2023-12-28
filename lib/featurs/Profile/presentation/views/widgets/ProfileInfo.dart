

import 'package:flutter/material.dart';
import 'package:instagram_clone/core/utils/Theme/styles.dart';
import 'package:instagram_clone/featurs/Profile/presentation/views/widgets/ProfileStats.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
             const CircleAvatar(
                radius: 45,
                backgroundImage: AssetImage(
                    'assets/images/nigel-hoare-_r3nclhPoPM-unsplash.jpg'),
              ),
              const Spacer(),
              ProfileStats(numOne: '5', numTwo: 'Posts'),
              ProfileStats(numOne: '120', numTwo: 'Followers'),
              ProfileStats(numOne: '350', numTwo: 'Following')
            ],
          ),
          const SizedBox(height: 4,),
          Text(
            'Abderraouf Benbellat',
            style: Styles.displayBold16
                .copyWith(fontWeight: FontWeight.w700, fontSize: 15),
          )
        ],
      ),
    );
  }
}
