import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:risloo_flutter/utils/res/res_colors.dart';

class ComponentHomeButton extends StatelessWidget {

  final GlobalKey<ScaffoldState> scaffoldKey;

  const ComponentHomeButton({Key? key, required this.scaffoldKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.0,
      width: 48.0,
      margin: const EdgeInsets.fromLTRB(6.0, 12.0, 12.0, 0.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
          border: Border.all(color: ResColors.coolGray300, width: 1.0),
          shape: BoxShape.rectangle
      ),
      child: Material(
        color: ResColors.transparent,
        child: IconButton(
          icon: const Icon(
            FontAwesomeIcons.bars,
            color: ResColors.coolGray500,
            size: 22.0,
          ),
          onPressed: () {
            scaffoldKey.currentState!.openEndDrawer();
          },
        ),
      ),
    );
  }

}