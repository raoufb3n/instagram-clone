import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/images/IG logo.png',
              ),
              const Spacer(),
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset('assets/images/Vector.svg')),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
