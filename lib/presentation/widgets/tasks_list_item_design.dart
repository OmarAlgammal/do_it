

import 'package:do_it/presentation/constants/dimens.dart';
import 'package:do_it/presentation/constants/icons.dart';
import 'package:do_it/presentation/screens/tasks_list_page.dart';
import 'package:flutter/material.dart';

class TasksListItemDesign extends StatelessWidget {
  const TasksListItemDesign({Key? key, required this.listName, required this.tasksNum,}) : super(key: key);

  final String listName;
  final int tasksNum;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        Navigator.pushNamed(context, TasksListPage.routeName, arguments: 'task list title');
      },
      horizontalTitleGap: size0,
      leading: const Icon(
        listIcon,
      ),
      trailing: Text(
        tasksNum.toString(),
      ),
      title: Text(
        listName,
      ),
    );
  }
}
