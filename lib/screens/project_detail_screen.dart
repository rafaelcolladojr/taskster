import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskster/components/custom_detail_display_card.dart';
import 'package:taskster/components/custom_round_icon_button.dart';
import 'package:taskster/components/team_avatar_view.dart';
import 'package:taskster/constants.dart';

class ProjectDetailScreen extends StatelessWidget {
  const ProjectDetailScreen({Key? key}) : super(key: key);

  static const String route = '/project';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 34.w, vertical: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomRoundIconButton(
                icon: Icons.keyboard_arrow_left,
                onPressed: () {},
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 30.h),
                  child: Text('Medical Dashboard UI',
                      style: Constants.kHeadingOneTextStyle),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 170.w,
                    child: CustomDetailDisplayCard(
                      label: 'Team',
                      child: Padding(
                        padding: EdgeInsets.all(8.w),
                        child: SizedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                child: Icon(Icons.add,
                                    color: Constants.colors['secondary']),
                                backgroundColor:
                                    Constants.colors['secondaryLight'],
                              ),
                              SizedBox(
                                width: 80.w,
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
                  ),
                  SizedBox(
                    width: 170.w,
                    child: CustomDetailDisplayCard(
                      label: 'Team',
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.w, vertical: 8.h),
                        child: SizedBox(
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
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
