


import 'package:flutter/material.dart';
import 'package:instagram_clone/core/utils/colors.dart';
import 'package:instagram_clone/core/utils/icons.dart';
import 'package:instagram_clone/featurs/Home/views/HomeView.dart';
import 'package:instagram_clone/featurs/Home/views/widgets/customNavBarItem.dart';
import 'package:instagram_clone/featurs/Profile/presentation/views/ProfileView.dart';

class LayoutWidget extends StatefulWidget {
  const LayoutWidget({super.key});

  @override
  State<LayoutWidget> createState() => _LayoutWidgetState();
}

class _LayoutWidgetState extends State<LayoutWidget> {
  int selectdIndex = 0;
  List<Widget>screens=[
   HomeView(),
   ProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectdIndex],
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
            color: ColorsStyles.white,
            border: Border(top: BorderSide(color: Colors.grey, width: 0.4))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomNavBarItem(
                icon: InstaIcons.home,
                icon2: InstaIcons.homeSelected,
                onPressed: () {
                  setState(() {
                    selectdIndex = 0;
                  });
                },
                selected: selectdIndex == 0 ? true : false),
            CustomNavBarItem(
                icon: InstaIcons.search,
                icon2: InstaIcons.serchSelected,
                onPressed: () {
                  setState(() {
                    selectdIndex = 1;
                  });
                },
                selected: selectdIndex == 1 ? true : false),
            CustomNavBarItem(
                icon: InstaIcons.add,
                icon2: InstaIcons.add,
                onPressed: () {
                  setState(() {
                    selectdIndex = 2;
                  });
                },
                selected: selectdIndex == 2 ? true : false),
            CustomNavBarItem(
                icon: InstaIcons.reels,
                icon2: InstaIcons.reelsSelected,
                onPressed: () {
                  setState(() {
                    selectdIndex = 3;
                  });
                },
                selected: selectdIndex == 3 ? true : false),
            CustomNavBarItem(
                icon: CircleAvatar(radius: 17),
                icon2: CircleAvatar(radius: 17),
                onPressed: () {
                  setState(() {
                    selectdIndex = 4;
                  });
                },
                selected: selectdIndex == 4 ? true : false),
          ],
        ),
      ),
    );
  }
}