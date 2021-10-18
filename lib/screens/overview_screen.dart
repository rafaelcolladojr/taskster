import 'package:flutter/material.dart';
import 'package:taskster/components/circle_tab_indicator.dart';
import 'package:taskster/components/custom_heading_divider.dart';
import 'package:taskster/components/custom_round_icon_button.dart';
import 'package:taskster/components/custom_text_field.dart';
import 'package:taskster/components/kanban_tab_view.dart';
import 'package:taskster/components/task_list_tile.dart';
import 'package:taskster/constants.dart';

class OverviewScreen extends StatefulWidget {
  OverviewScreen({Key? key}) : super(key: key);

  static const route = '/overview';

  @override
  State<OverviewScreen> createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  final List<Widget> taskTileList = [
    TaskListTile(
      title: 'Morning standup | Routine',
      isCompleted: true,
    ),
    TaskListTile(
      title: 'Organizing Trello board',
      isCompleted: false,
    ),
    TaskListTile(
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
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 34.0, vertical: 0.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Alita Leany',
                        style: TextStyle(
                          color: Constants.colors['text'],
                          fontSize: 30.0,
                          fontWeight: FontWeight.w600,
                        ),
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
                  const SizedBox(height: 40.0),
                  CustomTextField(
                    label: const Icon(Icons.search),
                    hint: 'Search task...',
                    onChanged: (value) {},
                  ),
                  const SizedBox(height: 25.0),
                  CustomHeadingDivider(
                    title: 'Projects',
                    buttonText: 'See all',
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            const KanbanTabView(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 34.0, vertical: 0.0),
              child: Column(
                children: [
                  CustomHeadingDivider(
                    title: 'Daily tasks',
                    buttonText: 'Edit',
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 200.0,
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
        child: Icon(Icons.add),
        backgroundColor: Constants.colors['secondary'],
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
