import 'package:flutter/material.dart';

class ColorManager {
  static const Color backGround = Color(0xFF001921);
  static const Color bottomBarBackground = Color(0xFFFBFCFC);
  static const Color bottomTileColor = Color(0xFFEFF1F1);
  static const Color white = Color(0xFFFFFFFF);
  static const Color orDoBackGround = Color(0xFF041920);
  static const Color textColor = Color(0xFF99A2AB);
  static const Color textLiteGreyColor = Color(0xFF57616A);
  static const Color searchIconColor = Color(0xFF8E8E93);
  static const Color textFieldColor = Color(0xFF193037);
  static const Color lightGreen = Color(0xFF07A279);
  static const Color moreLightGreen = Color(0xFFDAF1EB);
  static const Color offersBackground = Color(0xFFF0FAF7);
  static const Color whiteBackground = Color(0xFFEFF0F1);
  static const Color backArrow = Color(0xFF57616A);
  static const Color dashedBorderColor = Color(0xFF83D1BC);
  static const Color backArrowColor = Color(0xFF57616A);
  static const Color yellow = Color(0xFFFBBC05);
  static const Color brown = Color(0xFF9D6455);
  static const Color primaryBlack = Color(0xFF000000);
  static const Color greyLight = Color(0xFFb8c6cb);
  static const Color grey = Color(0xFF969696);
  static const Color textFieldColorGrey = Color(0xFFF4F5F6);
  static const Color gradient = Color(0xFF037D5D);
  static const Color black = Color(0xFF001921);
  static const Color black2 = Color(0xFF000000);
  static const Color questionColor = Color(0xFF33001921);
  static const Color green = Color(0xFF07A279);
  static const Color shift_color = Color(0xFFE7F6F2);
  static const Color addButtonGreenColor = Color(0xFFE7F6F2);
  static const Color red = Color(0xFFEA4335);
  static const Color darkRed = Color(0xFFFE1725);
  static const Color yellowShade = Color(0xFFFBBC05);

  //static const Color darkRed = Color(0xFFF95B4E);
  static const Color teal = Color(0xFF00A7B1);
  static const Color blurGreen = Color(0xFF6AC7AF);
  static const Color transparent = Colors.transparent;
  static const Color darkGreen = Colors.green;
  static const Color greyBackground = Color(0xFFEFF0F1);
  static const Color lightGrey = Color(0xFFE4E6E8);

  // static Color grey2 = const Color(0XFFE4E6E8);
  static Color blurAppColor = const Color(0x66ffffff);

}

class BlurAppbarColor {
  static Animation? colorTween;

  getBlurAppbar(AnimationController colorAnimationController) {
    colorTween = ColorTween(begin: Colors.transparent, end: ColorManager.blurAppColor)
        .animate(colorAnimationController);
  }

  static AnimationController? colorAnimationController;

  bool scrollListener(ScrollNotification scrollInfo) {
    if (scrollInfo.metrics.axis == Axis.vertical) {
      colorAnimationController!.animateTo(scrollInfo.metrics.pixels);
      return true;
    }
    return true;
  }
}
