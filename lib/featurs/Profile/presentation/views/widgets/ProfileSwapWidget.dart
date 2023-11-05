import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_clone/featurs/Profile/presentation/views/widgets/ProfilePostsGrid.dart';

class ProfileSwapWidget extends StatefulWidget {
  const ProfileSwapWidget({super.key});

  @override
  State<ProfileSwapWidget> createState() => _ProfileSwapWidgetState();
}

class _ProfileSwapWidgetState extends State<ProfileSwapWidget> {
  Alignment alignment = Alignment.centerLeft;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  index = 0;
                  alignment = Alignment.centerLeft;
                });
              },
              child: SvgPicture.asset(
                index == 0
                    ? 'assets/icons/potsSelect.svg'
                    : 'assets/icons/PostSelected.svg',
                height: 25,
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  index = 1;
                  alignment = Alignment.centerRight;
                });
              },
              child: SvgPicture.asset(
                index == 1
                    ? 'assets/icons/tagselect.svg'
                    : 'assets/icons/tagunselect.svg',
                height: 25,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 4,
        ),
        AnimatedAlign(
          curve: Curves.easeIn,
          alignment: alignment,
          duration: Duration(milliseconds: 200),
          child: Container(
            height: 1.5,
            width: MediaQuery.of(context).size.width / 2,
            color: Colors.black,
          ),
        ),
         ProfilePostsGrid()
      ],
    );
  }
}
