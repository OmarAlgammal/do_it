

import 'package:do_it/presentation/constants/dimens.dart';
import 'package:do_it/presentation/constants/icons.dart';
import 'package:do_it/presentation/screens/sign_up_page.dart';
import 'package:do_it/presentation/widgets/ask_and_make_action.dart';
import 'package:do_it/presentation/widgets/my_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:do_it/presentation/extensions/screen_size.dart';


class SignInWithAccountPage extends StatefulWidget {
  const SignInWithAccountPage({Key? key}) : super(key: key);

  static const routeName = 'singInWithAccountPage';

  @override
  _SignInWithAccountPageState createState() => _SignInWithAccountPageState();
}

class _SignInWithAccountPageState extends State<SignInWithAccountPage> {

  late AppLocalizations al;

  @override
  Widget build(BuildContext context) {
    al = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: padding16,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    al.welcomeBack,
                    style: const TextStyle(
                      fontSize: size36,
                    ),
                  ),
                  Text(
                    al.manyTasksAwaitYouToAchieve,
                    style: const TextStyle(
                      fontSize: size18,
                    ),
                  )
                ],
              ),
            ),
            Flexible(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: al.account,
                      prefixIcon: const Icon(
                        emailIcon,
                      ),
                    )
                  ),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      hintText: al.passwordHint,
                      prefixIcon: const Icon(
                        eyeIcon,
                      ),
                    )
                  ),
                  gap36,
                  MyButton(onPressed: (){
                    // todo: complete verification from account
                  }, buttonName: al.verification)
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: AskAndMakeAction(question: al.newUser, action: al.createAccount, onPressed: (){
                  Navigator.pushReplacementNamed(context, SignUpPage.routeName);
                },)
              ),
            )
          ],
        ),
      ),
    );
  }
}
