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

  // Vars
  String _currentRoute = ResRoutes.fragmentAuthLogin;
  List<String> _backstackRoute = [ResRoutes.fragmentAuthLogin];

  // Tree
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return customPop(context);
      },

      child: Scaffold(
        backgroundColor: ResColors.coolGray50,

        body: SafeArea(
          child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                const ComponentHomeDebug(),
                ComponentAuthHost(currentRoute: _currentRoute),
              ],
          ),
        ),

      ),
    );
  }

  void navigateTo(String route) {
    if (route == ResRoutes.fragmentAuthLogin) {
      _backstackRoute.clear();
      _backstackRoute = [ResRoutes.fragmentAuthLogin];
    } else {
      _backstackRoute.add(route);
    }

    setState(() {
      _currentRoute = route;
    });
  }

  void navigateBack(String route) {
    setState(() {
      _currentRoute = route;
    });
  }

  Future<bool> customPop(BuildContext context) {
    if (_backstackRoute.length > 1) {
      _backstackRoute.removeAt(_backstackRoute.length - 1);
      navigateBack(_backstackRoute[_backstackRoute.length - 1]);

      return Future.value(false);
    } else {
      return Future.value(true);
    }
  }

}