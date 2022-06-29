

import 'package:do_it/presentation/constants/dimens.dart';
import 'package:do_it/presentation/widgets/completed_list_item_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CompletedTasksPage extends StatefulWidget {
  const CompletedTasksPage({Key? key}) : super(key: key);

  @override
  _CompletedTasksPageState createState() => _CompletedTasksPageState();
}

class _CompletedTasksPageState extends State<CompletedTasksPage> {

  late AppLocalizations al;
  @override
  Widget build(BuildContext context) {
    al = AppLocalizations.of(context)!;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: padding8,
        child: ListView(
          children: [
            gap16,
            Align(
              alignment: Alignment.center,
              child: Text(
                al.today,
              ),
            ),
// today completed tasks
            ListView.builder(
              itemCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index){
                return const CompletedListItemDesign(expanded: false, title: 'title',);
              },
            ),
            gap24,
// yesterday completed tasks
          Align(
            alignment: Alignment.center,
            child: Text(
              al.yesterday,
            ),
          ),
            ListView.builder(
              itemCount: 3,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index){
                return const CompletedListItemDesign(expanded: false, title: 'title',);
              },
            ),
          ],
        ),
      )
    );
  }
}
