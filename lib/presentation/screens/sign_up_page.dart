
import 'package:do_it/presentation/constants/dimens.dart';
import 'package:do_it/presentation/constants/icons.dart';
import 'package:do_it/presentation/screens/home_page.dart';
import 'package:do_it/presentation/screens/sign_in_page.dart';
import 'package:do_it/presentation/screens/sign_up_with_email_page.dart';
import 'package:do_it/presentation/widgets/ask_and_make_action.dart';
import 'package:do_it/presentation/widgets/register_item_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  static const String routeName = 'signUpPage';

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  late  AppLocalizations al;
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
                    al.createAccount,
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
                    RegisterItemDesign(icon: emailIcon, registrationText: al.singUpWithEmail, onPressed: (){
                      Navigator.pushNamed(context, SignUpWithEmailPage.routeName);
                    }),
                    gap8,
                    RegisterItemDesign(icon: googleIcon, registrationText: al.singUpWithGoogle, onPressed: (){
                      // todo: sing up with google
                      Navigator.pushReplacementNamed(context, HomePage.routeName);
                    }),
                    gap8,
                    RegisterItemDesign(icon: appleIcon, registrationText: al.singUpWithApple, onPressed: (){
                      // todo: sing up with apple
                      Navigator.pushReplacementNamed(context, HomePage.routeName);
                    }),
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: AskAndMakeAction(question: al.haveAnAccount, action: al.singIn, onPressed: (){
                    Navigator.pop(context);
                  },),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
