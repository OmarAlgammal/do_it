import 'package:do_it/presentation/constants/colors.dart';
import 'package:do_it/presentation/constants/dimens.dart';
import 'package:do_it/presentation/constants/icons.dart';
import 'package:do_it/presentation/constants/paths.dart';
import 'package:do_it/presentation/entities/task_model.dart';
import 'package:do_it/presentation/widgets/task_item_design.dart';
import 'package:do_it/presentation/widgets/tasks_list_item_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class GroupItemDesign extends StatefulWidget {
  const GroupItemDesign({Key? key, required this.groupName}) : super(key: key);

  final String groupName;

  @override
  State<GroupItemDesign> createState() => _GroupItemDesignState();
}

class _GroupItemDesignState extends State<GroupItemDesign> {

  late AppLocalizations _al;
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    _al = AppLocalizations.of(context)!;
    return ExpansionTile(
      maintainState: false,
      onExpansionChanged: (bool value){
        setState(() {
          _isExpanded = value;
        });
      },
      title: ListTile(
        horizontalTitleGap: size0,
        contentPadding: padding0,
        leading: SvgPicture.asset(
          groupIconPath,
          color: Theme.of(context).colorScheme.primary,
        ),
        title: Row(
          children: [
            Expanded(
              child: Text(
                widget.groupName,
              ),
            ),
            Visibility(
              visible: _isExpanded,
              child: PopupMenuButton(
                itemBuilder: (context) => [
                  PopupMenuItem(
                    onTap: (){
                      // todo: addition or removal lists action
                    },
                    child: Text(
                      _al.additionOrRemovalLists,
                    ),
                  ),
                  PopupMenuItem(
                    onTap: (){
                      // todo: rename group action
                    },
                    child: Text(
                      _al.renameGroup,
                    ),
                  ),
                  PopupMenuItem(
                    onTap: (){
                      // todo: ungroup list action
                    },
                    child: Text(
                      _al.ungroupLists,
                    ),
                  ),
                ],
              )
            )
          ],
        ),
      ),
      children: [
        ListView.builder(
          shrinkWrap: true,
          itemCount: 3,
          itemBuilder: (context, index) {
            return const Padding(
              padding: paddingH16,
              child: TasksListItemDesign(
                listName: 'list name',
                tasksNum: 2,
              ),
            );
          },
        )
      ],
    );
  }
}
