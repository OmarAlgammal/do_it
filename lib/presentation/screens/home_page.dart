import 'package:do_it/presentation/constants/colors.dart';
import 'package:do_it/presentation/constants/dimens.dart';
import 'package:do_it/presentation/constants/paths.dart';
import 'package:do_it/presentation/screens/completed_tasks_page.dart';
import 'package:do_it/presentation/screens/my_day_page.dart';
import 'package:do_it/presentation/screens/my_tasks_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:do_it/presentation/extensions/screen_size.dart';
import 'package:flutter_svg/flutter_svg.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String routeName = 'homePage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late AppLocalizations al;
  @override
  Widget build(BuildContext context) {
    al = AppLocalizations.of(context)!;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          toolbarHeight: size86,
          centerTitle: true,
          title: SizedBox(height: size46,child: SvgPicture.asset(logoPath),),
          bottom: PreferredSize(
            preferredSize: Size(((context.width/7) *3), size56),
            child: SizedBox(
              width: ((context.width/7) *3),
              child: TabBar(
                tabs: [
                  SizedBox(
                    height: size36,
                    child: Center(
                      child: Text(
                        al.myDay,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size36,
                    child: Center(
                      child: Text(
                        al.myTasks,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size36,
                    child: Center(
                      child: Text(
                        al.completed,
                      ),
                    ),
                  ),
                ],
                physics: const NeverScrollableScrollPhysics(),
                indicator: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: circular100,
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            MyDayPage(),
            MyTasksPage(),
            CompletedTasksPage(),
          ],
        )
      ),
    );
  }
}
