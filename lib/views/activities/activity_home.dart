import 'package:flutter/material.dart';

import 'package:risloo_flutter/utils/res/res_colors.dart';
import 'package:risloo_flutter/utils/res/res_routes.dart';

import 'package:risloo_flutter/views/components/home/component_home_drawer.dart';
import 'package:risloo_flutter/views/components/home/component_home_body.dart';

class ActivityHome extends StatefulWidget {
  const ActivityHome({Key? key}) : super(key: key);

  @override
  _ActivityHomeState createState() => _ActivityHomeState();
}

class _ActivityHomeState extends State<ActivityHome> {

  // Vars
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  String _currentRoute = ResRoutes.fragmentHomeDashboard;
  List<String> _backstackRoute = [ResRoutes.fragmentHomeDashboard];

  // Tree
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return customPop(context);
      },

      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: ResColors.white,

        endDrawer: ComponentHomeDrawer(
          currentRoute: _currentRoute,
          callback: (String route) {
            navigateTo(route);
          },
        ),

        body: ComponentHomeBody(
          scaffoldKey: _scaffoldKey,
          currentRoute: _currentRoute,
          callback: (String route) {
            navigateTo(route);
          },
        ),

      ),
    );
  }

  void navigateTo(String route) {
    if (_scaffoldKey.currentState!.isEndDrawerOpen) {
      Navigator.pop(context);
    }

    if (route == ResRoutes.fragmentHomeDashboard) {
      _backstackRoute.clear();
      _backstackRoute = [ResRoutes.fragmentHomeDashboard];
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
    if (_scaffoldKey.currentState!.isEndDrawerOpen) {
      Navigator.pop(context);

      return Future.value(false);
    } else if (_backstackRoute.length > 1) {
      _backstackRoute.removeAt(_backstackRoute.length - 1);
      navigateBack(_backstackRoute[_backstackRoute.length - 1]);

      return Future.value(false);
    } else {
      return Future.value(true);
    }
  }

}