import 'package:do_it/presentation/constants/dimens.dart';
import 'package:do_it/presentation/entities/task_model.dart';
import 'package:do_it/presentation/widgets/my_divider.dart';
import 'package:do_it/presentation/widgets/new_task_tile.dart';
import 'package:do_it/presentation/widgets/task_item_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class MyDayPage extends StatefulWidget {
  const MyDayPage({Key? key}) : super(key: key);


  @override
  _MyDayState createState() => _MyDayState();
}

class _MyDayState extends State<MyDayPage> {

  late AppLocalizations al;

  @override
  Widget build(BuildContext context) {
    al = AppLocalizations.of(context)!;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: padding8,
        child: Column(
          children: [
            gap16,
            Flexible(
              flex: 1,
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index){
                  return Column(
                    children: [
                      TaskItemDesign(task: TaskModel(title: 'task title', isDone: false, repeatDaily:  false, addToMyDay: false, note: ''),),
                      const MyDivider(),
                    ],
                  );
                },
              ),
            ),
            const Flexible(
              flex: 0,
              child: NewTaskTile(taskListName: 'My Day',),
            )
          ],
        ),
      ),
    );
  }
}
