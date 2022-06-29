

import 'package:do_it/presentation/constants/colors.dart';
import 'package:do_it/presentation/constants/dimens.dart';
import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: brightGreyColor,
      thickness: size2,
    );
  }
}
