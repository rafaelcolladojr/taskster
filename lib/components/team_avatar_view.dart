import 'package:flutter/material.dart';

class TeamAvatarView extends StatelessWidget {
  const TeamAvatarView({
    Key? key,
    this.avatars,
  }) : super(key: key);

  final List<ImageProvider>? avatars;

  List<Widget> getAvatarList(List<ImageProvider>? avatars) {
    if (avatars == null || avatars.isEmpty) {
      return [
        const CircleAvatar(
          child: Icon(Icons.person, color: Colors.grey),
          radius: 15.0,
          backgroundColor: Colors.white,
        ),
      ];
    } else {
      List<Widget> widgets = [];
      widgets.add(CircleAvatar(
        backgroundImage: avatars[0],
        radius: 15.0,
        backgroundColor: Colors.white,
      ));

      for (var i = 1; i < avatars.length; i++) {
        widgets.add(Positioned(
          left: 25.0 * i,
          child: CircleAvatar(
            backgroundImage: avatars[i],
            radius: 15.0,
            backgroundColor: Colors.white,
          ),
        ));
      }

      return widgets;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: getAvatarList(avatars));
  }
}
