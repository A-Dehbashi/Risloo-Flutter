import 'package:flutter/material.dart';

import 'package:risloo_flutter/utils/res/res_strings.dart';

class FragmentBulks extends StatelessWidget {
  const FragmentBulks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        ResStrings.drawerTitleBulks,
      ),
    );
  }

}