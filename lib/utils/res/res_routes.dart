import 'package:flutter/material.dart';

import 'package:risloo_flutter/views/activities/activity_home.dart';

class ResRoutes {

  // Activity Routes
  //////////////////////////////////////////////////

  static Map<String, Widget Function(BuildContext)> activityRoutes = {
    activityHome: (context) => const ActivityHome(),
  };

  //////////////////////////////////////////////////

  // Single Routes
  //////////////////////////////////////////////////

  static const String activityHome = '/activity_home';

  //////////////////////////////////////////////////

}