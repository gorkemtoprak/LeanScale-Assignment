import 'package:flutter/material.dart';

class Constants {
  static const mainColor = Color.fromRGBO(250, 97, 38, 1);
  static const white = Color(0xffefefef);
  static const black = Color.fromRGBO(0, 0, 0, 1);
  static const blackThree = Color(0xff363636);
  static const greyish = Color(0xffb5b5b5);
  static const warmGrey = Color(0xff868686);
  static const warmGreyTwo = Color.fromARGB(255, 0, 0, 0);
  static const greyishBrown = Color(0xff4d4d4d);
  static const greyishBrownTwo = Color(0xff3b3b3b);
  static const greyishTwo = Color(0xffb1b1b1);
  static const greyishThree = Color(0xffa5a5a5);
  static const dustyOrange = Color(0xffe37643);
  static const red = Color(0xffef3b2c);
  static const maize = Color(0xfff3bf63);
  static const blue = Color(0xff5663ff);
  static const darkPurple = Color(0xff222455);
  static const nardo = Color(0xff6e7faa);
}

double screenWidth(context) {
  return MediaQuery.of(context).size.width;
}

double screenHeight(context) {
  return MediaQuery.of(context).size.height;
}

isPortrait(context) {
  return MediaQuery.of(context).orientation == Orientation.portrait;
}

EdgeInsetsGeometry customPadding() {
  return const EdgeInsets.only(
    left: 16,
    right: 16,
    top: 20,
    bottom: 20,
  );
}
