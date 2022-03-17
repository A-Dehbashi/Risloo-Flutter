import 'package:flutter/material.dart';

import 'package:risloo_flutter/views/components/component_home_toolbar.dart';
import 'package:risloo_flutter/views/components/component_home_breadcump.dart';
import 'package:risloo_flutter/views/components/component_home_button.dart';
import 'package:risloo_flutter/views/components/component_home_host.dart';

class ComponentHomeBody extends StatelessWidget {

  final GlobalKey<ScaffoldState> scaffoldKey;
  final int currentIndex;

  const ComponentHomeBody({Key? key, required this.scaffoldKey, required this.currentIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const ComponentHomeToolbar(),
              ComponentHomeButton(scaffoldKey: scaffoldKey),
            ],
          ),
          ComponentHomeBreadcump(currentIndex: currentIndex),
          ComponentHomeHost(currentIndex: currentIndex),
        ],
      ),
    );
  }

}