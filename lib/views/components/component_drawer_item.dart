import 'package:flutter/material.dart';

import 'package:risloo_flutter/utils/res/res_colors.dart';
import 'package:risloo_flutter/utils/res/res_fonts.dart';
import 'package:risloo_flutter/utils/res/res_lists.dart';

class ComponentDrawerItem extends StatelessWidget {

  // Vars
  final Function callback;
  final int index, currentIndex;

  // Constructor
  const ComponentDrawerItem({Key? key, required this.callback, required this.index, required this.currentIndex}) : super(key: key);

  // Tree
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(12.0, 4.0, 12.0, 4.0),

      decoration: BoxDecoration(
        color: index == currentIndex ? ResColors.risloo500 : ResColors.transparent,
        borderRadius: BorderRadius.circular(4.0),
      ),

      child: ListTile(
        visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
        minLeadingWidth: 0.0,
        title: Text(
          ResLists.drawerTitles[index],
          style: TextStyle(
            color: index == currentIndex ? ResColors.white : ResColors.coolGray900,
            fontSize: 14.0,
            fontFamily: ResFonts.danaMedium,
          ),
        ),
        subtitle: Text(
          ResLists.drawerDescs[index],
          style: TextStyle(
            color: index == currentIndex ? ResColors.white : ResColors.coolGray600,
            fontSize: 10.0,
            fontFamily: ResFonts.danaLight,
          ),
        ),
        leading: Icon(
          ResLists.drawerIcons[index],
          color: index == currentIndex ? ResColors.white : ResColors.coolGray900,
          size: 20.0,
        ),
        onTap: () {
          callback(index);
        },
      ),
    );
  }

}