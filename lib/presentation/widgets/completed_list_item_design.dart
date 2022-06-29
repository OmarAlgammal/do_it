
import 'package:do_it/presentation/constants/dimens.dart';
import 'package:do_it/presentation/constants/icons.dart';
import 'package:do_it/presentation/entities/task_model.dart';
import 'package:do_it/presentation/widgets/task_item_design.dart';
import 'package:flutter/material.dart';

class CompletedListItemDesign extends StatelessWidget {
  const CompletedListItemDesign({Key? key, required this.expanded, required this.title}) : super(key: key);

  final bool expanded;
  final String title;
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
          title,
      ),
      children: [
        ListView.builder(
          itemCount: 3,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index){
            // todo: wrap with bloc
            return TaskItemDesign(task: TaskModel(title: 'pray', isDone: true, addToMyDay: true, repeatDaily: true, note: 'it is a note'),);
          },
        )
      ],

    );
  }
}
