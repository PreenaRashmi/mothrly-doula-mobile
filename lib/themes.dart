import 'package:flutter/material.dart';

class Themes {
  TextStyle get Header1 {
    return const TextStyle(
      fontSize: 28.0,
      fontWeight: FontWeight.w600,
      color: Color(0xff3A3A3C),
      letterSpacing: 0.8,
    );
  }

  TextStyle get Heading2 {
    return const TextStyle(
      fontSize: 23.0,
      fontWeight: FontWeight.w600,
      color: Color(0xff282828),
    );
  }

  TextStyle get Heading3 {
    return const TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w500,
      color: Color(0xff3A3A3C),
    );
  }

  TextStyle get Heading4 {
    return const TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
      color: Color(0xff3A3A3C),
    );
  }

  TextStyle get Heading5 {
    return const TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: Color(0xff676767),
    );
  }

  TextStyle get Content {
    return const TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: Color(0xff3A3A3C),
    );
  }

  TextStyle get TextSmall {
    return const TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: Color(0xff868585),
    );
  }

  TextStyle get TextSmallLight {
    return const TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      color: Color(0xff949494),
    );
  }

  TextStyle get TextSmallBold {
    return const TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w600,
      color: Color(0xff4A4A4A),
    );
  }

  TextStyle get TextBlack {
    return const TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      color: Color(0xff282828),
    );
  }

  TextStyle get PlaceholderText {
    return const TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: Color(0xffC0C0C0),
    );
  }

  TextStyle get bottomSheetText {
    return const TextStyle(
      fontSize: 16.0,
      color: Colors.grey,
    );
  }
}
