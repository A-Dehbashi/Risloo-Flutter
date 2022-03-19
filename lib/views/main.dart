import 'package:flutter/material.dart';

import 'package:risloo_flutter/utils/res/res_routes.dart';
import 'package:risloo_flutter/utils/res/res_themes.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: ResRoutes.activityHome,
    routes: ResRoutes.activityRoutes,
    theme: ResThemes.theme,
    darkTheme: ResThemes.darkTheme,
    debugShowCheckedModeBanner: false,
  ));
}