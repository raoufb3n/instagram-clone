import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

abstract class InstaIcons {
  static SvgPicture home = SvgPicture.asset('assets/icons/Home.svg');
  static SvgPicture homeSelected =
      SvgPicture.asset('assets/icons/HomeSelected.svg');
  static Image like = Image.asset('assets/icons/Heart.png');
  static SvgPicture likeSelected =
      SvgPicture.asset('assets/icons/HeartSeleted.svg');
  static SvgPicture chat = SvgPicture.asset('assets/icons/chat.svg');
  static SvgPicture add = SvgPicture.asset('assets/icons/add.svg');
  static Image comment = Image.asset('assets/icons/comment.png');
  static SvgPicture menu = SvgPicture.asset('assets/icons/Menu.svg');
  static SvgPicture plus = SvgPicture.asset('assets/icons/plus.svg');
  static SvgPicture reels = SvgPicture.asset('assets/icons/reels.svg');
  static SvgPicture reelsSelected =
      SvgPicture.asset('assets/icons/reelsSelected.svg');
  static SvgPicture save = SvgPicture.asset('assets/icons/Save.svg');
  static SvgPicture saveSelected = SvgPicture.asset('assets/icons/Save-1.svg');
  static SvgPicture search = SvgPicture.asset('assets/icons/Search.svg');
  static SvgPicture serchSelected =
      SvgPicture.asset('assets/icons/SearchSelected.svg');
  static Image send = Image.asset('assets/icons/send.png');
  static SvgPicture shop = SvgPicture.asset('assets/icons/Shop.svg');
  static SvgPicture shopSelected =
      SvgPicture.asset('assets/icons/shopSelected.svg');
  static final SvgPicture addStory =
      SvgPicture.asset('assets/icons/addStory.svg');
}
