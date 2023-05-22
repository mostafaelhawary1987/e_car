import 'package:e_car/helpers/theme/app_colors.dart';
import 'package:flutter/material.dart';

import '../utils/common_methods.dart';

ThemeData appThemeDate(BuildContext context) {
  return ThemeData(
    primaryColor: mainColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    hintColor: hintColor,
    brightness: Brightness.light,
    buttonTheme: const ButtonThemeData(
      buttonColor: mainColor,
    ),
    bottomSheetTheme: const BottomSheetThemeData(backgroundColor: Colors.white),
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: mainColor,
      secondary: secondColor,
    ),
    appBarTheme: const AppBarTheme(
        color: scaffoldColor, elevation: 0, centerTitle: true),
    scaffoldBackgroundColor: Colors.transparent,
    backgroundColor: Colors.transparent,
    fontFamily: CommonMethods.fontFamily(context),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: mainColor,
    ),
  );
}

const TextStyle buttonStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w600,
  color: mainColor,
);
const TextStyle loginText = TextStyle(
  fontSize: 30,
  fontWeight: FontWeight.w700,
  color: whiteColor,
);
const TextStyle labelText = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
  color: textColor,
);

const TextStyle text20RG = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w100,
  color: textGreyColor,
);
const TextStyle text20MM = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w400,
  color: mainColor,
);
const TextStyle formTitleStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w500,
  color: blackColor,
);
const TextStyle text16MM = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w700,
  color: mainColor,
);
const TextStyle labelInfoText = TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.w700,
  color: mainColor,
);
const TextStyle text15Bh = TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.bold,
  color: hintColor,
);
const TextStyle text15RM = TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.w100,
  color: mainColor,
);
const TextStyle text15Mh = TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.w700,
  color: hintColor,
);
const TextStyle text15MM = TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.w700,
  color: mainColor,
);
const TextStyle hintStyle = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w400,
  color: hintColor,
);

const TextStyle textFormStyle = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w500,
  color: mainColor,
);
const TextStyle text13RT = TextStyle(
  fontSize: 13,
  fontWeight: FontWeight.w300,
  color: textGreyColor,
);
const TextStyle text12RT = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w100,
  color: textGreyColor,
);
const TextStyle text12MT = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w700,
  color:textGreyColor,
);
const TextStyle textS12R = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w400,
  color: secondColor,
);
