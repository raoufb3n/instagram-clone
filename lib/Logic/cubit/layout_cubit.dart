import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../featurs/AddPostStory/prisenatation/view/PostingView.dart';
import '../../featurs/Home/views/HomeView.dart';
import '../../featurs/Profile/presentation/views/ProfileView.dart';
import '../../featurs/Reels/prisentation/view/ReelsView.dart';
import '../../featurs/Search/Presentation/view/SearchView.dart';

part 'layout_state.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(Home());
  int currentIndex = 0;
  static LayoutCubit get(context) => BlocProvider.of(context);
  List<Widget> screens = const [
    HomeView(),
    SearchView(),
    PostingView(),
    ReelsView(),
    ProfileView(),
  ];
  void changeLayout(int index) {
    currentIndex = index;
    emit(Home());
  }
}
