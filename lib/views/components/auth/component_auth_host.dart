import 'package:flutter/material.dart';

import 'package:risloo_flutter/utils/res/res_maps.dart';

class ComponentAuthHost extends StatelessWidget {

  // Vars
  final String currentRoute;

  // Constructor
  const ComponentAuthHost({Key? key, required this.currentRoute}) : super(key: key);

  // Tree
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ResMaps.fragmentAuthRoutes[currentRoute] as Widget,
    );
  }

}