import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskster/components/circle_tab_indicator.dart';
import 'package:taskster/components/custom_heading_divider.dart';
import 'package:taskster/components/custom_round_icon_button.dart';
import 'package:taskster/components/custom_text_field.dart';
import 'package:taskster/components/kanban_tab_view.dart';
import 'package:taskster/components/task_list_tile.dart';
import 'package:taskster/constants.dart';

class OverviewScreen extends StatefulWidget {
  const OverviewScreen({Key? key}) : super(key: key);

  static const route = '/overview';

  @override
  State<OverviewScreen> createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  final List<Widget> taskTileList = [
    const TaskListTile(
      title: 'Morning standup | Routine',
      isCompleted: true,
    ),
    const TaskListTile(
      title: 'Organizing Trello board',
      isCompleted: false,
    ),
    const TaskListTile(
      title: 'Check evening availability',
      isCompleted: false,
    ),
  ];

  @override
  void initState() {
    _controller = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.colors['background'],
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Alita Leany',
                          style: Constants.kHeadingOneTextStyle,
                        ),
                        CustomRoundIconButton(
                          icon: Icons.notifications_none,
                          onPressed: () {},
                        )
                      ],
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        'Project Director',
                        style: TextStyle(
                          color: Constants.colors['textSecondary'],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: CustomTextField(
                        label: const Icon(Icons.search),
                        hint: 'Search task...',
                        onChanged: (value) {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: CustomHeadingDivider(
                      title: 'Projects',
                      buttonText: 'See all',
                      onPressed: () {},
                    ),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 8.0),
                      child: KanbanTabView(),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 0.0),
                child: Column(
                  children: [
                    CustomHeadingDivider(
                      title: 'Daily tasks',
                      buttonText: 'Edit',
                      onPressed: () {},
                    ),
                    Expanded(
                      child: ListView.separated(
                        itemBuilder: (context, index) {
                          return taskTileList[index];
                        },
                        separatorBuilder: (context, index) {
                          return const Divider(color: Colors.transparent);
                        },
                        itemCount: taskTileList.length,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBar(
                indicator: CircleTabIndicator(
                  color: Constants.colors['primary'] ?? Colors.purple,
                  radius: 3,
                ),
                controller: _controller,
                tabs: [
                  Tab(
                      child: Icon(Icons.house,
                          color: Constants.colors['primary'])),
                  Tab(
                      child: Icon(Icons.backpack_outlined,
                          color: Constants.colors['primary'])),
                  const Tab(
                      child: Icon(Icons.house, color: Colors.transparent)),
                  Tab(
                    child: Icon(Icons.calendar_today_outlined,
                        color: Constants.colors['primary']),
                  ),
                  Tab(
                      child: Icon(Icons.person_outline,
                          color: Constants.colors['primary'])),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        backgroundColor: Constants.colors['secondary'],
        elevation: 10.0,
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
