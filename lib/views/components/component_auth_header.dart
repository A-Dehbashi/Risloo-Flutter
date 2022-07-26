import 'package:flutter/material.dart';

import 'package:risloo_flutter/utils/res/res_colors.dart';
import 'package:risloo_flutter/utils/res/res_fonts.dart';
import 'package:risloo_flutter/utils/res/res_strings.dart';

class ComponentAuthHeader extends StatelessWidget {

  // Constructor
  const ComponentAuthHeader({Key? key}) : super(key: key);

  // Tree
  @override
  Widget build(BuildContext context) {
    return const Text(
      ResStrings.appName,
      style: TextStyle(
        color: ResColors.risloo500,
        fontSize: 26.0,
        fontFamily: ResFonts.danaBold,
      ),
    );
  }

}