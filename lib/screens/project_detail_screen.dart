import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskster/components/attachment_carousel_item.dart';
import 'package:taskster/components/comment_list_item.dart';
import 'package:taskster/components/custom_detail_display_card.dart';
import 'package:taskster/components/custom_heading_divider.dart';
import 'package:taskster/components/custom_round_icon_button.dart';
import 'package:taskster/components/custom_text_field.dart';
import 'package:taskster/components/task_list_tile.dart';
import 'package:taskster/components/team_avatar_view.dart';
import 'package:taskster/constants.dart';
import 'package:taskster/util/attachment_type.dart';

class ProjectDetailScreen extends StatefulWidget {
  const ProjectDetailScreen({Key? key}) : super(key: key);

  static const String route = '/project';

  @override
  State<ProjectDetailScreen> createState() => _ProjectDetailScreenState();
}

class _ProjectDetailScreenState extends State<ProjectDetailScreen> {
  final List<Widget> taskTileList = [
    const TaskListTile(title: 'Adjusting sidebar menu page', isCompleted: false),
    const TaskListTile(title: 'Finishing the style guide page', isCompleted: false),
    const TaskListTile(title: '8 tasks completed', isCompleted: true),
  ];

  List<CommentListItem> commentList = [
    const CommentListItem(comment: 'Hello guys, checkout the latest update!', timestamp: '12:34'),
  ];

  String currentComment = '';

  final _commentController = TextEditingController();
  final _commentScrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    double pagePadding = 34.w;

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: pagePadding, vertical: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomRoundIconButton(
                        icon: Icons.keyboard_arrow_left,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 24.h),
                          child: Text('Medical Dashboard UI', style: Constants.kHeadingOneTextStyle),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 170.w,
                            child: CustomDetailDisplayCard(
                              label: 'Team',
                              child: Padding(
                                padding: EdgeInsets.all(8.w),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    CircleAvatar(
                                      child: Icon(Icons.add, color: Constants.colors['secondary']),
                                      backgroundColor: Constants.colors['secondaryLight'],
                                    ),
                                    SizedBox(
                                      width: 90.w,
                                      child: const TeamAvatarView(
                                        avatars: [
                                          AssetImage('images/profile_1.png'),
                                          AssetImage('images/profile_2.png'),
                                          AssetImage('images/profile_3.png'),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 170.w,
                            child: CustomDetailDisplayCard(
                              label: 'Deadline',
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 8.h),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(right: 8.w),
                                            child: Icon(
                                              Icons.calendar_today,
                                              size: 18.sp,
                                              color: Constants.colors['primary'],
                                            ),
                                          ),
                                          const Text('May 25, 2021'),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(right: 8.w),
                                          child: Icon(
                                            Icons.lock_clock,
                                            size: 18.sp,
                                            color: Constants.colors['primary'],
                                          ),
                                        ),
                                        const Text('12.30'),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      CustomHeadingDivider(
                        title: "Attachments",
                        titleSize: 18.sp,
                        buttonText: "See All",
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.only(left: 24.0),
                    children: const [
                      AttachmentCarouselItem(
                        filename: 'Project description.pdf',
                        filesize: '12 MB',
                        filetype: AttachmentType.defaultFile,
                      ),
                      AttachmentCarouselItem(
                        filename: 'Sitemap-graphic.png',
                        filesize: '3 MB',
                        filetype: AttachmentType.image,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: pagePadding),
                  child: Column(
                    children: [
                      CustomHeadingDivider(
                        title: "Tasks",
                        titleSize: 18.sp,
                        buttonText: "Edit",
                        onPressed: () {},
                      ),
                      SizedBox(
                        height: 200.h,
                        child: ListView.separated(
                          itemBuilder: (_, index) => taskTileList[index],
                          separatorBuilder: (_, index) => const Divider(height: 12.0, color: Colors.transparent),
                          itemCount: taskTileList.length,
                        ),
                      ),
                      CustomHeadingDivider(
                        title: "Comments",
                        titleSize: 18.sp,
                      ),
                      SizedBox(
                        height: 70.h,
                        child: ListView.separated(
                          controller: _commentScrollController,
                          itemBuilder: (_, index) => commentList[index],
                          separatorBuilder: (_, index) => const Divider(height: 6.0, color: Colors.transparent),
                          itemCount: commentList.length,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.grey, width: 0.4)),
        height: 100.0,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CustomTextField(
                    hint: 'Write comment...',
                    onChanged: (text) {
                      setState(() {
                        currentComment = text;
                      });
                    },
                    controller: _commentController,
                  ),
                ),
              ),
              IconButton(
                iconSize: 50.0,
                icon: CircleAvatar(
                  backgroundColor: Constants.colors['primary'],
                  radius: 30.0,
                  child: const Icon(
                    Icons.send_rounded,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  if (currentComment != '') {
                    setState(() {
                      final now = DateTime.now();
                      commentList.add(CommentListItem(comment: currentComment, timestamp: now.hour.toString() + ":" + now.minute.toString()));
                      currentComment = '';
                      _commentController.clear();

                      // Ensure scrolling accurs after latest list item is rendered.
                      SchedulerBinding.instance?.addPostFrameCallback((_) {
                        _commentScrollController.animateTo(_commentScrollController.position.maxScrollExtent, duration: const Duration(milliseconds: 500), curve: Curves.easeOut);
                      });
                    });
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
