import 'package:flutter/material.dart';

import 'package:risloo_flutter/utils/res/res_colors.dart';
import 'package:risloo_flutter/utils/res/res_fonts.dart';
import 'package:risloo_flutter/utils/res/res_strings.dart';

class ComponentDrawerHeader extends StatelessWidget {
  const ComponentDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 12.0),
      child: Text(
        ResStrings.appName,
        style: TextStyle(
          color: ResColors.risloo500,
          fontSize: 32.0,
          fontFamily: ResFonts.danaExtraBold,
        ),
      ),
    );
  }

}