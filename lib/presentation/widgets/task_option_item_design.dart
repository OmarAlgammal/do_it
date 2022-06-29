

import 'package:do_it/presentation/constants/dimens.dart';
import 'package:flutter/material.dart';

class TaskOptionItemDesign extends StatelessWidget {
  const TaskOptionItemDesign({Key? key, required this.icon, required this.optionName, required this.onPressed}) : super(key: key);

  final IconData icon;
  final String optionName;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: size0,
      contentPadding: paddingH8,
      onTap: onPressed,
      leading: Icon(
        icon,
        size: 24,
      ),
      title: Text(
        optionName,
      ),
    );
  }
}
