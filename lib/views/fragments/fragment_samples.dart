import 'package:flutter/material.dart';

import 'package:risloo_flutter/utils/res/res_strings.dart';

class FragmentSamples extends StatelessWidget {
  const FragmentSamples({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        ResStrings.drawerTitleSamples,
      ),
    );
  }

}