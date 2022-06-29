
import 'package:do_it/presentation/constants/dimens.dart';
import 'package:do_it/presentation/constants/icons.dart';
import 'package:do_it/presentation/entities/arguments/task_page_arguments.dart';
import 'package:do_it/presentation/entities/task_model.dart';
import 'package:do_it/presentation/screens/task_page.dart';
import 'package:flutter/material.dart';

class TaskItemDesign extends StatelessWidget {
  const TaskItemDesign({Key? key, required this.task}) : super(key: key);

  final TaskModel task;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: size0,
      onTap: (){
        Navigator.pushNamed(context, TaskPage.routeName, arguments:  TaskPageArguments(task: task));
      },
      visualDensity: const VisualDensity(vertical: -1),
      leading: GestureDetector(
        onTap: (){
          // todo: complete task
        },
        child: Icon(
          (task.isDone)? checkCircleIcon : circleIcon,
        ),
      ),
      title: Text(
        task.title,
      ),
    );
  }
}
