import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class TTextFormFieldTheme {
  TTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme =
      const InputDecorationTheme(
          prefixIconColor: tSecondaryColor,
          floatingLabelStyle: TextStyle(color: tSecondaryColor),
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2.0, color: tSecondaryColor),
          ));

  static InputDecorationTheme darkInputDecorationTheme =
      const InputDecorationTheme(
          prefixIconColor: tSecondaryColor,
          floatingLabelStyle: TextStyle(color: tWhiteColor),
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2.0, color: tWhiteColor),
          ));
}
