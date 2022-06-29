

import 'package:do_it/presentation/constants/dimens.dart';
import 'package:do_it/presentation/constants/icons.dart';
import 'package:flutter/material.dart';

class ListItemSelectionDesign extends StatefulWidget {
  const ListItemSelectionDesign({Key? key, required this.taskListName}) : super(key: key);

  final String taskListName;

  @override
  _ListItemSelectionDesignState createState() => _ListItemSelectionDesignState();
}

class _ListItemSelectionDesignState extends State<ListItemSelectionDesign> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: size0,
      leading: const Icon(
        listIcon,
      ),
      title: Text(
        widget.taskListName,
      ),
      trailing: GestureDetector(
        onTap: (){
          // todo: on add icon tabbed action
        },
        child: const Icon(
          addNewTaskIcon,
        ),
      ),
    );
  }
}
