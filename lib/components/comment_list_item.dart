import 'package:flutter/material.dart';
import 'package:taskster/constants.dart';

class CommentListItem extends StatelessWidget {
  const CommentListItem({
    Key? key,
    required this.comment,
    required this.timestamp,
  }) : super(key: key);

  final String comment;
  final String timestamp;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage('images/profile_3.png'),
          radius: 15.0,
          backgroundColor: Colors.white,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: Constants.colors['primaryLight'],
                ),
                child: Text(
                  comment,
                  style: const TextStyle(fontSize: 12.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  timestamp,
                  style: const TextStyle(color: Colors.grey, fontSize: 12.0),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
