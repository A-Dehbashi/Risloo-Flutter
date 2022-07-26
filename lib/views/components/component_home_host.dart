import 'package:flutter/material.dart';
import 'package:risloo_flutter/utils/res/res_lists.dart';

import 'package:risloo_flutter/utils/res/res_maps.dart';

class ComponentHomeHost extends StatelessWidget {

  // Vars
  final int currentIndex;

  // Constructor
  const ComponentHomeHost({Key? key, required this.currentIndex}) : super(key: key);

  // Tree
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ResMaps.fragmentHomeRoutes[ResLists.drawerRoutes[currentIndex]] as Widget,
    );
  }

}