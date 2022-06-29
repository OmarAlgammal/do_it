
import 'package:do_it/presentation/constants/dimens.dart';
import 'package:do_it/presentation/widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class SignUpWithEmailPage extends StatefulWidget {
  const SignUpWithEmailPage({Key? key}) : super(key: key);

  static const String routeName = 'createAccountWithEmailPage';

  @override
  _SignUpWithEmailPageState createState() => _SignUpWithEmailPageState();
}

class _SignUpWithEmailPageState extends State<SignUpWithEmailPage> {


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
            mainAxisAlignment: MainAxisAlignment.center,
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
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Form(
                      child: Column(
                        children: [
// name field
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: al.name,
                            ),
                          ),
// account field
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: al.account,
                          ),
                        ),
// password field
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: al.passwordHint,
                          ),
                        )
                        ],
                      ),
                    ),
                    gap24,
                    MyButton(onPressed: (){
                      // todo: create account
                    }, buttonName: al.createAccount,)
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
