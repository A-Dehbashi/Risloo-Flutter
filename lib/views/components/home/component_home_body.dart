import 'package:flutter/material.dart';

import 'package:risloo_flutter/views/components/component_debug_note.dart';
import 'package:risloo_flutter/views/components/home/component_home_toolbar.dart';
import 'package:risloo_flutter/views/components/home/component_home_breadcump.dart';
import 'package:risloo_flutter/views/components/home/component_home_button.dart';
import 'package:risloo_flutter/views/components/home/component_home_host.dart';

class ComponentHomeBody extends StatelessWidget {

  // Vars
  final GlobalKey<ScaffoldState> scaffoldKey;
  final Function callback;
  final String currentRoute;

  // Constructor
  const ComponentHomeBody({Key? key, required this.scaffoldKey, required this.callback, required this.currentRoute}) : super(key: key);

  // Tree
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          const ComponentHomeDebug(),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ComponentHomeToolbar(callback: callback),
              ComponentHomeButton(scaffoldKey: scaffoldKey),
            ],
          ),
          ComponentHomeBreadcump(currentRoute: currentRoute),
          ComponentHomeHost(currentRoute: currentRoute),
        ],
      ),
    );
  }

}