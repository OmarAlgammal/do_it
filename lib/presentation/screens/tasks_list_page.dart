

import 'package:do_it/presentation/constants/dimens.dart';
import 'package:do_it/presentation/constants/icons.dart';
import 'package:do_it/presentation/entities/arguments/task_page_arguments.dart';
import 'package:do_it/presentation/entities/task_model.dart';
import 'package:do_it/presentation/screens/task_page.dart';
import 'package:do_it/presentation/widgets/group_item_design.dart';
import 'package:do_it/presentation/widgets/new_task_tile.dart';
import 'package:do_it/presentation/widgets/task_item_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TasksListPage extends StatefulWidget {
  const TasksListPage({Key? key,}) : super(key: key);

  static const String routeName = 'tasksListPage';

  @override
  _TasksListPageState createState() => _TasksListPageState();
}

class _TasksListPageState extends State<TasksListPage> {
  late final AppLocalizations _al;
  @override
  Widget build(BuildContext context) {
    String listName = ModalRoute.of(context)!.settings.arguments as String;
    _al = AppLocalizations.of(context)!;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text(
          listName,
        ),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                onTap: (){
                  // todo: reorder tasks action
                },
                child: Text(
                  _al.reorderTasks,
                ),
              ),
              PopupMenuItem(
                onTap: (){
                  // todo: rename list action
                },
                child: Text(
                  _al.renameList,
                ),
              ),
              PopupMenuItem(
                onTap: (){
                  // todo: sort by action
                },
                child: Text(
                  _al.sortBy,
                ),
              ),
              PopupMenuItem(
                onTap: (){
                  // todo: delete list action
                },
                child: Text(
                  _al.deleteList,
                ),
              )
            ],
          )
        ],

      ),
      body: Column(
        children: [
          gap16,
          Flexible(
            flex: 1,
            child: ListView.builder(
              itemCount: 6,
              itemBuilder: (context, index){
                // todo: task title
                return TaskItemDesign(task: TaskModel(title: 'tasks', repeatDaily: true, addToMyDay: true, isDone: false, note: 'it is a note'),);
              },
            ),
          ),
          const Flexible(
            flex: 0,
            // todo: task list name
            child: NewTaskTile(taskListName: 'task list name'),
          )
        ],
      ),
    );
  }
}
