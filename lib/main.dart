import 'package:do_it/presentation/my_themes.dart';
import 'package:do_it/presentation/screens/note_page.dart';
import 'package:do_it/presentation/screens/sign_in_page.dart';
import 'package:do_it/presentation/screens/sign_in_with_account_page.dart';
import 'package:do_it/presentation/screens/sign_up_page.dart';
import 'package:do_it/presentation/screens/sign_up_with_email_page.dart';
import 'package:do_it/presentation/screens/task_page.dart';
import 'package:do_it/presentation/screens/tasks_list_page.dart';
import 'package:do_it/presentation/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      initialRoute: SignInPage.routeName,
      routes: {
        SignInPage.routeName: (context) => SignInPage(),
        SignInWithAccountPage.routeName: (context) => const SignInWithAccountPage(),
        SignUpPage.routeName: (context) => const SignUpPage(),
        SignUpWithEmailPage.routeName: (context) => const SignUpWithEmailPage(),
        HomePage.routeName: (context) => const HomePage(),
        TasksListPage.routeName: (context) => const TasksListPage(),
        TaskPage.routeName: (context) => const TaskPage(),
        NotePage.routeName: (context) => const NotePage(),
      },
    );
  }
}
