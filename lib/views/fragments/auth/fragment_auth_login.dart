import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:risloo_flutter/utils/res/res_colors.dart';
import 'package:risloo_flutter/utils/res/res_fonts.dart';

import 'package:risloo_flutter/utils/res/res_routes.dart';

class FragmentAuthLogin extends StatelessWidget {
  const FragmentAuthLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextButton(
          child: const Text(
            "فراموشی رمز عبور",
            style: TextStyle(
              color: ResColors.coolGray500,
              fontSize: 16.0,
              fontFamily: ResFonts.danaLight,
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, ResRoutes.activityHome);
          },
        ),
        const VerticalDivider(
          width: 24,
          indent: 4,
          endIndent: 4,
          thickness: 1,
          color: ResColors.coolGray500,
        ),
        TextButton(
          child: const Text(
            "عضویت",
            style: TextStyle(
              color: ResColors.coolGray500,
              fontSize: 16.0,
              fontFamily: ResFonts.danaLight,
            ),
          ),
          onPressed: () {
            SystemNavigator.pop(); // for Android
            //exit(0) for both Android and iOS
          },
        ),
      ],
    );
  }

}