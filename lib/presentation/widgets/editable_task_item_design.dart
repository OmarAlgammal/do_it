
import 'package:do_it/presentation/constants/dimens.dart';
import 'package:do_it/presentation/constants/icons.dart';
import 'package:flutter/material.dart';

class EditableTaskItem extends StatefulWidget {
  const EditableTaskItem({Key? key, required this.taskTitle}) : super(key: key);

  final String taskTitle;

  @override
  _EditableTaskItemState createState() => _EditableTaskItemState();
}

class _EditableTaskItemState extends State<EditableTaskItem> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: paddingH16,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Flexible(
            flex: 1,
            child: TextFormField(
              controller: _controller..text = widget.taskTitle,
              style: const TextStyle(
                fontSize: size24,
              ),
              decoration: const InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ),
          gap16,
          Flexible(
            flex: 0,
            child: SizedBox(
              width: size24,
              child: IconButton(
                onPressed: (){
                  // todo: complete task action
                },
                icon: const Icon(
                  checkCircleIcon,
                ),
              ),
            )
          )
        ],
      ),
    );
  }
}
