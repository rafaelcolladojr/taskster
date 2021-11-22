import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:taskster/components/project_info_list_tile.dart';
import 'package:taskster/components/team_avatar_view.dart';
import 'package:taskster/constants.dart';
import 'package:taskster/screens/project_detail_screen.dart';

class KanbanProjectItem extends StatelessWidget {
  const KanbanProjectItem({
    Key? key,
    required this.title,
    this.avatars,
    required this.due,
    this.numberOfTasks = 0,
    this.progress = 0.0,
    this.primary = true,
  }) : super(key: key);

  final String title;
  final List<ImageProvider>? avatars;
  final DateTime due;
  final int numberOfTasks;
  final double progress;
  final bool primary;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Material(
        elevation: 10.0,
        borderRadius: const BorderRadius.all(Radius.circular(25.0)),
        color: primary
            ? Constants.colors['primary']
            : Constants.colors['secondary'],
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: TeamAvatarView(
                        avatars: avatars,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ProjectInfoListTile(
                          icon: Icons.schedule_outlined,
                          text: DateFormat('dd MMM yyyy, ha').format(due),
                          primary: primary,
                        ),
                        ProjectInfoListTile(
                          icon: Icons.done,
                          text:
                              '$numberOfTasks task${(numberOfTasks == 1 ? '' : 's')}',
                          primary: primary,
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    LinearProgressIndicator(
                      value: progress,
                      backgroundColor: Colors.white,
                      minHeight: 9.h,
                      valueColor: AlwaysStoppedAnimation(primary
                          ? Constants.colors['secondary']
                          : Constants.colors['primary']),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Progress',
                          style: Constants.kWhiteTextStyle,
                        ),
                        Text(
                          '${(progress * 100).toInt()}%',
                          style: Constants.kWhiteTextStyle,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      onTap: () {
        Navigator.pushNamed(context, ProjectDetailScreen.route);
      },
    );
  }
}
