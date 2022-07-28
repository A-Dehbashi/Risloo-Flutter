import 'package:flutter/material.dart';

import 'package:risloo_flutter/utils/res/res_colors.dart';
import 'package:risloo_flutter/utils/res/res_fonts.dart';
import 'package:risloo_flutter/utils/res/res_routes.dart';
import 'package:risloo_flutter/utils/res/res_strings.dart';

class ComponentHomeBreadcump extends StatelessWidget {

  // Vars
  final String currentRoute;

  // Constructor
  const ComponentHomeBreadcump({Key? key, required this.currentRoute}) : super(key: key);

  // Tree
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(12.0, 16.0, 12.0, 12.0),

      child: Text(
        currentRoute == ResRoutes.fragmentHomeDashboard ? ResStrings.dashboardWelcome : ResStrings.dashboardTitle + "  >  " +  "???",
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