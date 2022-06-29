
import 'package:do_it/presentation/constants/dimens.dart';
import 'package:do_it/presentation/constants/icons.dart';
import 'package:do_it/presentation/entities/arguments/task_page_arguments.dart';
import 'package:do_it/presentation/entities/task_model.dart';
import 'package:do_it/presentation/screens/note_page.dart';
import 'package:do_it/presentation/widgets/editable_task_item_design.dart';
import 'package:do_it/presentation/widgets/file_item_design.dart';
import 'package:do_it/presentation/widgets/task_option_item_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class TaskPage extends StatefulWidget {
  const TaskPage({Key? key,}) : super(key: key);

  static const String routeName = 'taskPage';


  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  late AppLocalizations al;

  late TaskPageArguments _arguments;

  @override
  Widget build(BuildContext context) {
    // todo: get data from arguments
    _arguments = ModalRoute.of(context)!.settings.arguments as TaskPageArguments;
    al = AppLocalizations.of(context)!;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text(
          _arguments.task.title,
        ),
      ),
      body: Padding(
        padding: padding8,
        child: ListView(
          children: [
            gap24,
            EditableTaskItem(taskTitle: _arguments.task.title),
            gap16,
            TaskOptionItemDesign(icon: dayIcon, optionName: al.addToMyDay, onPressed: (){
              // todo: add to my day action
            }),
            TaskOptionItemDesign(icon: dailyRepetitionIcon, optionName: al.dailyRepetition, onPressed: (){
              // todo: repeat action
            }),
            TaskOptionItemDesign(icon: attachIcon, optionName: al.addFile, onPressed: (){
              // todo: add file action
            }),
            gap8,
// files list view
            ListView.builder(
              itemCount: 4,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index){
                return FileItemDesign(fileType: 'PNG', fileName: 'JPG_43545453452', fileSize: 1.8, onPressed: (){
                  // todo: open file
                },);
              },
            ),
            gap16,
            TaskOptionItemDesign(icon: addNewTaskIcon, optionName: al.addANote, onPressed: (){
              // todo: pass task model
              Navigator.pushNamed(context, NotePage.routeName, arguments: TaskModel(title: 'my task title', note: 'it is my task note'));
            }),
          ],
        ),
      ),
    );
  }
}
