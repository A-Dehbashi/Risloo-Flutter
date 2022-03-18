import 'package:flutter/material.dart';

import 'package:risloo_flutter/utils/res/res_colors.dart';
import 'package:risloo_flutter/utils/res/res_fonts.dart';
import 'package:risloo_flutter/utils/res/res_lists.dart';

class ComponentHomeToolbar extends StatelessWidget {

  final List<int> aaa = [0, 1, 2, 3];

  // Vars
  final Function callback;

  // Constructor
  ComponentHomeToolbar({Key? key, required this.callback}) : super(key: key);

  // Tree
  @override
  Widget build(BuildContext context) {
    return DropdownMenuItem(
      child: Container(
        height: 48.0,
        margin: const EdgeInsets.fromLTRB(12.0, 12.0, 6.0, 0.0),

        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.0),
            border: Border.all(color: ResColors.coolGray300, width: 1.0),
            shape: BoxShape.rectangle
        ),

        child: Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 6.0, 8.0, 6.0),
          child: Stack(
            children: <Widget>[
              SingleChildScrollView(
                child: Row(
                  children: <Widget>[
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Text(
                          "امیر دهباشی",
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            color: ResColors.coolGray700,
                            fontSize: 11.0,
                            fontFamily: ResFonts.danaDemiBold,
                          ),
                        ),
                        Text(
                          "100.000 تومان",
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            color: ResColors.emerald600,
                            fontSize: 11.0,
                            fontFamily: ResFonts.danaDemiBold,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(width: 10.0),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4.0),
                      child: Image.asset(
                        "assets/icon.png",
                        width: 32.0,
                        height: 32.0,
                      ),
                    )
                  ],
                ),
              ),
              DropdownButtonHideUnderline(
                child: DropdownButton<int>(
                  iconSize: 0,
                  items: aaa.map((int index) {
                    return DropdownMenuItem<int>(
                        value: index,
                        alignment: Alignment.center,
                        child: Text(
                          ResLists.toolbarTitles[index],
                          style: TextStyle(
                            color: index == 3 ? ResColors.red600 : ResColors.coolGray700,
                            fontSize: 13.0,
                            fontFamily: ResFonts.danaMedium,
                          ),
                        ),
                    );
                  }).toList(),
                  onChanged: (index) {
                    callback(index);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}