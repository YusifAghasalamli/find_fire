import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Paddings {
  Paddings._();

  //horizontal
  static EdgeInsets horizontal8 = EdgeInsets.symmetric(horizontal: 8.w);
  static EdgeInsets horizontal16 = EdgeInsets.symmetric(horizontal: 16.w);
  static EdgeInsets horizontal20 = EdgeInsets.symmetric(horizontal: 20.w);
  static EdgeInsets horizontal24 = EdgeInsets.symmetric(horizontal: 24.w);

  //vertical
  static EdgeInsets vertical16 = EdgeInsets.symmetric(vertical: 16.w);
  static EdgeInsets vertical24 = EdgeInsets.symmetric(vertical: 24.h);

  //all
  static EdgeInsets all8 =
      EdgeInsets.only(top: 8.h, bottom: 8.h, left: 8.w, right: 8.w);
  static EdgeInsets all16 =
      EdgeInsets.only(top: 16.h, bottom: 16.h, left: 16.w, right: 16.w);
  static EdgeInsets all24 =
      EdgeInsets.only(top: 24.h, bottom: 24.h, left: 24.w, right: 24.w);

  //left
  static EdgeInsets left16 = EdgeInsets.only(left: 16.h);

  //top
  static EdgeInsets top16 = EdgeInsets.only(top: 16.h);
  static EdgeInsets top32 = EdgeInsets.only(top: 32.h);

  //bottom
  static EdgeInsets bottom16 = EdgeInsets.only(bottom: 16.h);

  //right
  static EdgeInsets right16 = EdgeInsets.only(right: 16.h);
}
