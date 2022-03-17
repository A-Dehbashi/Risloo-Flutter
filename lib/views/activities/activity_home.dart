import 'package:flutter/material.dart';

import 'package:risloo_flutter/utils/res/res_colors.dart';

import 'package:risloo_flutter/views/components/component_home_drawer.dart';
import 'package:risloo_flutter/views/components/component_home_body.dart';

class ActivityHome extends StatefulWidget {
  const ActivityHome({Key? key}) : super(key: key);

  @override
  _ActivityHome createState() => _ActivityHome();
}

class _ActivityHome extends State<ActivityHome> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  int _currentIndex = 0;
  List<int> _backstack = [0];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return customPop(context);
      },
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: ResColors.coolGray50,

        endDrawer: ComponentHomeDrawer(
          currentIndex: _currentIndex,
          callback: (int index) {
            navigateTo(index);
          },
        ),

        body: ComponentHomeBody(
          scaffoldKey: _scaffoldKey,
          currentIndex: _currentIndex,
          callback: (int index) {
            navigateTo(index);
          },
        ),

      ),
    );
  }

  void navigateTo(int index) {
    if (_scaffoldKey.currentState!.isEndDrawerOpen) {
      Navigator.pop(context);
    }

    if (index == 0) {
      _backstack.clear();
      _backstack = [0];
    } else {
      _backstack.add(index);
    }

    setState(() {
      _currentIndex = index;
    });
  }

  void navigateBack(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Future<bool> customPop(BuildContext context) {
    if (_scaffoldKey.currentState!.isEndDrawerOpen) {
      Navigator.pop(context);

      return Future.value(false);
    } else if (_backstack.length > 1) {
      _backstack.removeAt(_backstack.length - 1);
      navigateBack(_backstack[_backstack.length - 1]);

      return Future.value(false);
    } else {
      return Future.value(true);
    }
  }

}