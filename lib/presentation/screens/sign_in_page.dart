import 'package:do_it/presentation/constants/dimens.dart';
import 'package:do_it/presentation/constants/icons.dart';
import 'package:do_it/presentation/screens/home_page.dart';
import 'package:do_it/presentation/screens/sign_in_with_account_page.dart';
import 'package:do_it/presentation/screens/sign_up_page.dart';
import 'package:do_it/presentation/widgets/ask_and_make_action.dart';
import 'package:do_it/presentation/widgets/register_item_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SignInPage extends StatelessWidget {

  static const routeName = 'signInPage';
  late AppLocalizations al;

  @override
  Widget build(BuildContext context) {
    al = AppLocalizations.of(context)!;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Padding(
          padding: padding16,
          child: Column(
            children: [
              Flexible(
                flex: 1,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    al.singIn,
                    style: const TextStyle(
                      fontSize: size36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RegisterItemDesign(
                        icon: emailIcon, registrationText: al.signInWithEmail, onPressed: (){
                          Navigator.pushNamed(context, SignInWithAccountPage.routeName);
                    },),
                    gap16,
                    RegisterItemDesign(
                        icon: googleIcon, registrationText: al.signInWithGoogle, onPressed: (){
                          // todo: sing in with google
                      Navigator.pushReplacementNamed(context, HomePage.routeName);

                    },),
                    gap16,
                    RegisterItemDesign(
                        icon: appleIcon, registrationText: al.signInWithApple, onPressed: (){
                          // todo: sing in with apple
                      Navigator.pushReplacementNamed(context, HomePage.routeName);

                    },),
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: AskAndMakeAction(question: al.newUser, action: al.createAccount, onPressed: (){
                    Navigator.pushNamed(context, SignUpPage.routeName);
                  },)
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}
