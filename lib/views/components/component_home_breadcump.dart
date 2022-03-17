import 'package:flutter/material.dart';

import 'package:risloo_flutter/utils/res/res_colors.dart';
import 'package:risloo_flutter/utils/res/res_fonts.dart';
import 'package:risloo_flutter/utils/res/res_lists.dart';
import 'package:risloo_flutter/utils/res/res_strings.dart';

class ComponentHomeBreadcump extends StatelessWidget {

  final int currentIndex;

  const ComponentHomeBreadcump({Key? key, required this.currentIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(12.0, 16.0, 12.0, 12.0),
      child: Text(
        currentIndex == 0 ? ResStrings.dashboardWelcome : ResStrings.dashboardTitle + "  >  " +  ResLists.drawerTitles[currentIndex],
        textDirection: TextDirection.rtl,
        style: const TextStyle(
          color: ResColors.coolGray700,
          fontSize: 12.0,
          fontFamily: ResFonts.danaDemiBold,
        ),
      ),
    );
  }

}