import 'package:flutter/material.dart';

import 'package:risloo_flutter/views/activities/activity_home.dart';

class ResRoutes {

  // Map Routes
  //////////////////////////////////////////////////

  static Map<String, Widget Function(BuildContext)> routes = {
    home: (context) => const ActivityHome(),
  };

  //////////////////////////////////////////////////

  // Single Routes
  //////////////////////////////////////////////////

  static const String home = '/home';

  //////////////////////////////////////////////////

}