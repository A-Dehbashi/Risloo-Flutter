import 'package:flutter/material.dart';

import 'package:risloo_flutter/utils/res/res_maps.dart';

class ComponentHomeHost extends StatelessWidget {

  // Vars
  final String route;

  // Constructor
  const ComponentHomeHost({Key? key, required this.route}) : super(key: key);

  // Tree
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ResMaps.fragmentRoutes[route] as Widget,
    );
  }

}