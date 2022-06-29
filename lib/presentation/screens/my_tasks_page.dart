

import 'package:do_it/presentation/constants/dimens.dart';
import 'package:do_it/presentation/screens/tasks_list_page.dart';
import 'package:do_it/presentation/widgets/group_item_design.dart';
import 'package:do_it/presentation/widgets/new_list_tile.dart';
import 'package:do_it/presentation/widgets/tasks_list_item_design.dart';
import 'package:flutter/material.dart';

class MyTasksPage extends StatefulWidget {
  const MyTasksPage({Key? key}) : super(key: key);

  @override
  _MyTasksPageState createState() => _MyTasksPageState();
}

class _MyTasksPageState extends State<MyTasksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          gap16,
          Flexible(
            flex: 1,
            child: ListView.builder(
              itemCount: 6,
              itemBuilder: (context, index){
                if (index == 3 || index == 4){
                  return const GroupItemDesign(groupName: 'groupName');
                }
                return TasksListItemDesign(listName: 'name', tasksNum: 3,);
              },
            ),
          ),
          Flexible(
            flex: 0,
            child: NewListTile(),
          )
        ],
      )
    );
  }
}
