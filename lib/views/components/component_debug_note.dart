import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:risloo_flutter/utils/res/res_colors.dart';
import 'package:risloo_flutter/utils/res/res_fonts.dart';
import 'package:risloo_flutter/utils/res/res_strings.dart';

class ComponentHomeDebug extends StatelessWidget {

  // Constructor
  const ComponentHomeDebug({Key? key}) : super(key: key);

  // Tree
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 0.0),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        color: ResColors.red600,
        shape: BoxShape.rectangle,
      ),

      child: Material(
        color: ResColors.transparent,
        child: InkWell(
          highlightColor: ResColors.transparent,
          splashColor: ResColors.red800,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12.0, 6.0, 12.0, 6.0),
            child: IntrinsicHeight(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const <Widget>[
                      Text(
                        ResStrings.appDebugNote,
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          color: ResColors.white,
                          fontSize: 12.0,
                          fontFamily: ResFonts.danaMedium,
                        ),
                      ),
                      Text(
                        ResStrings.appDebugClick,
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          color: ResColors.white80p,
                          fontSize: 11.0,
                          fontFamily: ResFonts.danaRegular,
                        ),
                      )
                    ],
                  ),
                  const VerticalDivider(
                    width: 24,
                    indent: 4,
                    endIndent: 4,
                    thickness: 1,
                    color: ResColors.white20p,
                  ),
                  const Icon(
                    FontAwesomeIcons.tools,
                    color: ResColors.white,
                    size: 26.0,
                  ),
                ],
              ),
            ),
          ),
          onTap: () {
            // TODO: Place Code When Needed
          },
        ),
      ),
    );
  }

}