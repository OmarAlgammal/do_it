
import 'package:do_it/presentation/constants/dimens.dart';
import 'package:flutter/material.dart';
import 'package:do_it/presentation/extensions/screen_size.dart';

class MyButton extends StatelessWidget {
  const MyButton({Key? key, required this.onPressed, required this.buttonName}) : super(key: key);

  final VoidCallback onPressed;
  final String buttonName;

  @override
  Widget build(BuildContext context) {
      return TextButton(
        style: ButtonStyle(

          fixedSize: MaterialStateProperty.all<Size>(
            const Size(double.maxFinite, size56),
            //Size.fromHeight(size56),
          ),
            backgroundColor: MaterialStateProperty.all<Color>(
              Theme.of(context).colorScheme.primary,
            ),

        ),
        onPressed: onPressed,
        child: Text(
          buttonName,
          style: TextStyle(
              color: Theme.of(context).primaryColor
          ),
        ),
      );
  }
}
