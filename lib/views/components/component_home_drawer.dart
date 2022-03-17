import 'package:flutter/material.dart';

import 'package:risloo_flutter/utils/res/res_colors.dart';
import 'package:risloo_flutter/utils/res/res_lists.dart';

import 'package:risloo_flutter/views/components/component_drawer_item.dart';
import 'package:risloo_flutter/views/components/component_drawer_header.dart';

class ComponentHomeDrawer extends StatelessWidget {

  final Function callback;
  final int currentIndex;

  const ComponentHomeDrawer({Key? key, required this.callback, required this.currentIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: ResColors.coolGray50,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView(
          children: <Widget>[
            const ComponentDrawerHeader(),
            SizedBox(
              height: double.maxFinite,
              child: ListView.builder(
                itemCount: ResLists.drawerTitles.length,
                itemBuilder: (context, index) {
                  return ComponentDrawerItem(callback: callback, index: index, currentIndex: currentIndex);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

}