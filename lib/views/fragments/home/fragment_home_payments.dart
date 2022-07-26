import 'package:flutter/material.dart';

import 'package:risloo_flutter/utils/res/res_strings.dart';

class FragmentHomePayments extends StatelessWidget {
  const FragmentHomePayments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        ResStrings.toolbarTitlePayments,
      ),
    );
  }

}