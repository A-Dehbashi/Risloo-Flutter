import 'package:flutter/material.dart';

import 'package:risloo_flutter/utils/res/res_colors.dart';
import 'package:risloo_flutter/utils/res/res_fonts.dart';

class ResThemes {

  // App Themes
  //////////////////////////////////////////////////

  static ThemeData theme = ThemeData(
    primaryColor: ResColors.risloo500,
    brightness: Brightness.light,
    fontFamily: ResFonts.danaMedium,
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: ResColors.risloo500,
    brightness: Brightness.dark,
    fontFamily: ResFonts.danaMedium,
  );

  //////////////////////////////////////////////////

}