

import 'package:do_it/presentation/constants/dimens.dart';
import 'package:do_it/presentation/constants/icons.dart';
import 'package:do_it/presentation/constants/paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';


class NewTaskTile extends StatelessWidget {
  const NewTaskTile({Key? key, required this.taskListName}) : super(key: key);

  final String taskListName;
  @override
  Widget build(BuildContext context) {
    AppLocalizations al = AppLocalizations.of(context)!;
    return  ListTile(
    onTap: (){
      showModalBottomSheet(
        context: context,
        builder: (context){
          return Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: Padding(
              padding: paddingH8,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
// text from field
                  TextFormField(
                    autofocus: true,
                    decoration: InputDecoration(
                        hintText: al.newTask,
                        border: InputBorder.none
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Flexible(
                        flex: 1,
                        child: ListTile(
                          onTap: (){
                            // todo: add task action
                          },
                          contentPadding: padding0,
                          horizontalTitleGap: size0,
// add task Icon
                          leading: SvgPicture.asset(addTaskIconPath),
// addition text
                          title: Text(
                            al.addition,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        child: ListTile(
                          onTap: (){
                            // todo: daily repetition action
                          },
                          contentPadding: padding0,
                          horizontalTitleGap: size0,
                          leading: const Icon(
                            dailyRepetitionIcon,
                          ),
                          title: Text(
                            al.dailyRepetition,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      );
    },
      horizontalTitleGap: size0,
// add new task icon
      leading: const Icon(
        addNewTaskIcon,
        size: size28,
      ),
// add new task text
      title: Text(
          al.newTask,
      ),
    );
  }
}
