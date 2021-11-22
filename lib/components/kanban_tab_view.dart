import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskster/components/circle_tab_indicator.dart';
import 'package:taskster/components/kanban_project_item.dart';
import 'package:taskster/constants.dart';

class KanbanTabView extends StatefulWidget {
  const KanbanTabView({Key? key}) : super(key: key);

  /// This class could accept "Project" model classes */

  @override
  State<KanbanTabView> createState() => _KanbanTabViewState();
}

class _KanbanTabViewState extends State<KanbanTabView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 35.w),
          child: SizedBox(
            width: 300.w,
            child: TabBar(
              controller: _tabController,
              labelColor: Constants.colors['text'],
              labelStyle: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
              ),
              unselectedLabelColor: Constants.colors['textDisabled'],
              labelPadding: EdgeInsets.zero,
              indicator: CircleTabIndicator(
                color: Constants.colors['primary'] ?? Colors.purple,
                radius: 3,
              ),
              tabs: const [
                Tab(text: 'In progress'),
                Tab(text: 'To do'),
                Tab(text: 'Done'),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: TabBarView(
            controller: _tabController,
            children: [
              CarouselSlider(
                items: [
                  KanbanProjectItem(
                    title: 'Medical Dashboard UI',
                    avatars: const [
                      AssetImage('images/profile_1.png'),
                      AssetImage('images/profile_2.png'),
                      AssetImage('images/profile_3.png'),
                    ],
                    due: DateTime(2021, 5, 25, 21, 0, 0),
                    numberOfTasks: 10,
                    progress: 0.8,
                  ),
                  KanbanProjectItem(
                    title: 'Video Game Concept',
                    avatars: const [
                      AssetImage('images/profile_2.png'),
                      AssetImage('images/profile_1.png'),
                    ],
                    due: DateTime(2021, 6, 20, 21, 0, 0),
                    numberOfTasks: 3,
                    progress: 0.3,
                    primary: false,
                  ),
                ],
                options: CarouselOptions(
                  enableInfiniteScroll: false,
                  height: 190.h,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                ),
              ),
              Center(
                child: Text(
                  'No pending projects',
                  style: TextStyle(
                    color: Constants.colors['textDisabled'],
                  ),
                ),
              ),
              Center(
                child: Text(
                  'No completed projects',
                  style: TextStyle(
                    color: Constants.colors['textDisabled'],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
