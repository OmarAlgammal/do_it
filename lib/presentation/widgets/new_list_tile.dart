import 'package:do_it/presentation/constants/colors.dart';
import 'package:do_it/presentation/constants/dimens.dart';
import 'package:do_it/presentation/constants/icons.dart';
import 'package:do_it/presentation/constants/paths.dart';
import 'package:do_it/presentation/widgets/list_item_selection_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:do_it/presentation/extensions/screen_size.dart';

class NewListTile extends StatefulWidget {
  const NewListTile({Key? key}) : super(key: key);

  @override
  State<NewListTile> createState() => _NewListTileState();
}

class _NewListTileState extends State<NewListTile> {

  bool _createGroupAvailable = false;
  late AppLocalizations _al;

  @override
  Widget build(BuildContext context) {
    _al = AppLocalizations.of(context)!;
    return ListTile(
      onTap: (){
        showModalBottomSheet(
          context: context,
          builder: (context){
            return  Padding(
              padding: MediaQuery.of(context).viewInsets,
              child: Padding(
                padding: paddingH8,
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: TextFormField(
                        autofocus: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: _al.newList,
                        ),
                      ),
                    ),
                    gap8,
                    Flexible(
                        flex: 0,
                        child: GestureDetector(
                          onTap: (){
                            // todo: on add task button clicked
                          },
                            child: SvgPicture.asset(addTaskIconPath),
                        )
                    ),
                  ],
                ),
              ),
            );
          }
        );
      },
      horizontalTitleGap: size0,
      leading: const Icon(
        addNewTaskIcon,
        size: size28,
      ),
      trailing: GestureDetector(
        onTap: (){
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text(
                  _al.createGroup,
                ),
                content: TextFormField(
                  onChanged: (text){
                   setState(() {
                     if (text.trim().isNotEmpty){
                       _createGroupAvailable = true;
                     }else{
                       _createGroupAvailable = false;
                     }
                   });
                  },
                  decoration: InputDecoration(
                    hintText: _al.groupName,
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: (){
                      // todo: on create group button clicked
                    },
                    child: Text(
                      _al.createGroup,
                      style: TextStyle(
                        color: (_createGroupAvailable)? Theme.of(context).colorScheme.primary : Theme.of(context).secondaryHeaderColor
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    child: Text(
                      _al.cancel,
                    ),
                  )
                ],
              );
            }
          );
          // showDialog(
          //     context: context,
          //     builder: (context){
          //       return AlertDialog(
          //           title: Text(
          //             al.addListToGroup,
          //           ),
          //           content: SizedBox(
          //             width: (context.width /6) *4,
          //             height: (context.height /6) *4,
          //             child: ListView.builder(
          //               itemCount: 6,
          //               itemBuilder: (context, index){
          //                 return const ListItemSelectionDesign(taskListName: 'taskListName');
          //               },
          //             ),
          //           )
          //       );
          //     }
          // );
        },
        child: SvgPicture.asset(
            groupIconPath,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
      title: Text(
        _al.newList,
      ),
    );
  }
}
