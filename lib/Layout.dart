import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_clone/Logic/cubit/layout_cubit.dart';
import 'package:instagram_clone/core/extensions/extensions.dart';
import 'package:instagram_clone/core/utils/Theme/icons.dart';
import 'package:instagram_clone/featurs/Home/views/widgets/customNavBarItem.dart';

class LayoutWidget extends StatefulWidget {
  const LayoutWidget({super.key});

  @override
  State<LayoutWidget> createState() => _LayoutWidgetState();
}

class _LayoutWidgetState extends State<LayoutWidget> {
  int selectdIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LayoutCubit, LayoutState>(
      builder: (context, state) {
        final LayoutCubit cubit = LayoutCubit.get(context);
        return Scaffold(
          body: cubit.screens[cubit.currentIndex],
          bottomNavigationBar: Container(
            width: context.width,
            height: 50,
            decoration: const BoxDecoration(
                color: Colors.white,
                border:
                    Border(top: BorderSide(color: Colors.grey, width: 0.4))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomNavBarItem(
                    icon: InstaIcons.home,
                    icon2: InstaIcons.homeSelected,
                    onPressed: () {
                      cubit.changeLayout(0);
                    },
                    selected: cubit.currentIndex == 0 ? true : false),
                CustomNavBarItem(
                    icon: InstaIcons.search,
                    icon2: InstaIcons.serchSelected,
                    onPressed: () {
                    cubit.changeLayout(1);
                    },
                    selected: cubit.currentIndex == 1 ? true : false),
                CustomNavBarItem(
                    icon: InstaIcons.add,
                    icon2: InstaIcons.add,
                    onPressed: () {
                      cubit.changeLayout(2);
                    },
                    selected: cubit.currentIndex == 2 ? true : false),
                CustomNavBarItem(
                    icon: InstaIcons.reels,
                    icon2: InstaIcons.reelsSelected,
                    onPressed: () {
                      cubit.changeLayout(3);
                    },
                    selected: cubit.currentIndex == 3 ? true : false),
                CustomNavBarItem(
                    icon: const CircleAvatar(radius: 17),
                    icon2: const CircleAvatar(radius: 17),
                    onPressed: () {
                      cubit.changeLayout(4);
                    },
                    selected: cubit.currentIndex == 4 ? true : false),
              ],
            ),
          ),
        );
      },
    );
  }
}
