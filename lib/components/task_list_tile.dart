import 'package:flutter/material.dart';
import 'package:taskster/constants.dart';

class TaskListTile extends StatefulWidget {
  const TaskListTile({
    Key? key,
    required this.title,
    this.isCompleted = false,
  }) : super(key: key);

  final String title;
  final bool isCompleted;

  @override
  State<TaskListTile> createState() => _TaskListTileState();
}

class _TaskListTileState extends State<TaskListTile> {
  late bool isComplete;

  @override
  void initState() {
    isComplete = widget.isCompleted;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Constants.colors['secondaryLight'] ?? Colors.yellow,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ListTile(
        visualDensity: VisualDensity.compact,
        title: Text(
          widget.title,
          style: TextStyle(
            color: Constants.colors['text'],
            fontSize: 14.0,
          ),
        ),
        trailing: GestureDetector(
          child: isComplete
              ? Icon(
                  Icons.check_box,
                  color: Constants.colors['secondary'],
                )
              : Icon(
                  Icons.check_box_outline_blank,
                  color: Constants.colors['secondary'],
                ),
          onTap: () {
            setState(() {
              isComplete = !isComplete;
            });
          },
        ),
        selectedTileColor: Constants.colors['secondaryLight'],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        selected: isComplete,
      ),
    );
  }
}
