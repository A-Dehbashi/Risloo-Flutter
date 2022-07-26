import 'package:flutter/material.dart';

import 'package:risloo_flutter/utils/res/res_colors.dart';
import 'package:risloo_flutter/utils/res/res_routes.dart';

import 'package:risloo_flutter/views/components/component_auth_host.dart';
import 'package:risloo_flutter/views/components/component_debug_note.dart';

class ActivityAuth extends StatefulWidget {
  const ActivityAuth({Key? key}) : super(key: key);

  @override
  _ActivityAuthState createState() => _ActivityAuthState();
}

class _ActivityAuthState extends State<ActivityAuth> {

  // Tree
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ResColors.coolGray50,

      body: SafeArea(
        child: Column(
            mainAxisSize: MainAxisSize.max,
            children: const <Widget>[
              ComponentHomeDebug(),
              ComponentAuthHost(route: ResRoutes.fragmentAuthLogin),
            ],
        ),
      ),
    );
  }

}