import 'package:flutter/material.dart';

import 'package:risloo_flutter/utils/res/res_colors.dart';
import 'package:risloo_flutter/utils/res/res_fonts.dart';

class ComponentHomeToolbar extends StatelessWidget {

  const ComponentHomeToolbar({Key? key}) : super(key: key);

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
          padding: const EdgeInsets.all(6.0),
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
                      fontSize: 10.0,
                      fontFamily: ResFonts.danaMedium,
                    ),
                  ),
                  Text(
                    "100.000.000 تومان",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      color: ResColors.emerald600,
                      fontSize: 10.0,
                      fontFamily: ResFonts.danaMedium,
                    ),
                  )
                ],
              ),
              const SizedBox(width: 8.0),
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
      ),
    );
  }

}