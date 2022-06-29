
import 'package:do_it/presentation/entities/task_model.dart';
import 'package:flutter/material.dart';

class NotePage extends StatefulWidget {
  const NotePage({Key? key}) : super(key: key);

  static const routeName = 'notePage';

  @override
  _NotePageState createState() => _NotePageState();

}

class _NotePageState extends State<NotePage> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    TaskModel arguments = ModalRoute.of(context)!.settings.arguments as TaskModel;
    return Scaffold(
      appBar: AppBar(
        title: SingleChildScrollView(
          child: Text(
            arguments.title,
          ),
        )
      ),
      body: TextFormField(
        controller: _controller..text = arguments.title,
        autofocus: true,
        expands: true,
        minLines: null,
        maxLines: null,
        decoration: InputDecoration(

          border: InputBorder.none,
          fillColor: Theme.of(context).colorScheme.background,
          filled: true,
        ),
      ),
    );
  }
}
