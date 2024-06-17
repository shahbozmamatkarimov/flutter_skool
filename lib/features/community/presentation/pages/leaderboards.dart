import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skool/core/resources/app_colors.dart';
import 'package:skool/core/widgets/w_text.dart';
import 'package:skool/core/widgets/w_user_avatar.dart';
import 'package:skool/core/widgets/w_user_indicator.dart';

class LeaderBoards extends StatelessWidget {
  const LeaderBoards({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.only(top: 20),
        padding: const EdgeInsets.all(20),
        // decoration: BoxDecoration(
        //     color: AppColors.white, borderRadius: BorderRadius.circular(16)),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        top: 0,
                        left: 0,
                        child: SvgPicture.asset("assets/svg/icon/settings.svg"),
                      ),
                      Column(
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Center(
                                    child: WuserProgressIndicator(
                                      value: 0.1,
                                      strokeWidth: 10,
                                      trackColor: AppColors.c_f0,
                                      progressColor: AppColors.c_2a,
                                      trackCornerRadius: 10,
                                      circleSize: 160,
                                    ),
                                  ),
                                  Positioned(
                                    top: 10,
                                    left: 10,
                                    right: 0,
                                    child: WUserAvatar(
                                      userStep: 1,
                                      radius: 70,
                                      width: 43,
                                      height: 38,
                                      right: 0,
                                      bottom: -12,
                                      fontSize: 22,
                                      userAvatar:
                                          'https://picsum.photos/250?image=9',
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          const WText(
                            text: "Xayot Sharapov",
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                          const SizedBox(height: 20),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 10),
                            decoration: BoxDecoration(
                              color: AppColors.c_d9,
                              borderRadius: BorderRadius.circular(26),
                            ),
                            child: const WText(
                              text: "Level 1 - STARTER",
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: AppColors.c_2a,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const WText(
                                text: "40",
                                fontSize: 12,
                                color: AppColors.c_2a,
                              ),
                              const SizedBox(width: 4),
                              const WText(
                                  text: "points to level up",
                                  fontSize: 12,
                                  color: AppColors.c_07),
                              const SizedBox(width: 4),
                              SvgPicture.asset(
                                  "assets/svg/icon/question_info.svg")
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  Row(
                    children: [
                      Container(
                        width: 42,
                        height: 42,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: AppColors.c_d9,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const WText(
                          text: "1",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(width: 20),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          WText(
                            text: "Level 1 - STARTER",
                            fontWeight: FontWeight.w600,
                            color: AppColors.c_07,
                          ),
                          SizedBox(height: 4),
                          WText(
                            text: "100% of members",
                            fontSize: 12,
                            color: AppColors.c_07,
                          ),
                        ],
                      )
                    ],
                  ),
                  Container(
                    width: 42,
                    alignment: Alignment.center,
                    child: SvgPicture.asset("assets/svg/icon/three_line.svg"),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 42,
                        height: 42,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: AppColors.c_f2,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: SvgPicture.asset("assets/svg/icon/lock.svg"),
                      ),
                      const SizedBox(width: 20),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          WText(
                            text: "Level 2",
                            fontWeight: FontWeight.w600,
                            color: AppColors.c_07,
                          ),
                          SizedBox(height: 4),
                          WText(
                            text: "100% of members",
                            fontSize: 12,
                            color: AppColors.c_07,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 28),
            const WText(
              text: "Leaderboards will be updated when there is more activity",
              fontSize: 14,
              color: AppColors.c_07,
            ),
            const SizedBox(height: 28),
            Container(
              padding: const EdgeInsets.only(top: 20, bottom: 24),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      const WText(
                        text: "Leaderboard (7-day)",
                        fontWeight: FontWeight.w600,
                      ),
                      const SizedBox(height: 18),
                      const Divider(
                        color: AppColors.c_e0,
                        height: 1,
                      ),
                      const SizedBox(height: 24),
                      SvgPicture.asset("assets/svg/icon/no_activity.svg"),
                      const SizedBox(height: 8),
                      const WText(
                        text: "No activity yet",
                        fontSize: 12,
                        color: AppColors.c_07,
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 28),
            Container(
              padding: const EdgeInsets.only(top: 20, bottom: 24),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      const WText(
                        text: "Leaderboard (30-day)",
                        fontWeight: FontWeight.w600,
                      ),
                      const SizedBox(height: 18),
                      const Divider(
                        color: AppColors.c_e0,
                        height: 1,
                      ),
                      const SizedBox(height: 24),
                      SvgPicture.asset("assets/svg/icon/no_activity.svg"),
                      const SizedBox(height: 8),
                      const WText(
                        text: "No activity yet",
                        fontSize: 12,
                        color: AppColors.c_07,
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 28),
            Container(
              padding: const EdgeInsets.only(top: 20, bottom: 24),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      const WText(
                        text: "Leaderboard (all-time)",
                        fontWeight: FontWeight.w600,
                      ),
                      const SizedBox(height: 18),
                      const Divider(
                        color: AppColors.c_e0,
                        height: 1,
                      ),
                      const SizedBox(height: 24),
                      SvgPicture.asset("assets/svg/icon/no_activity.svg"),
                      const SizedBox(height: 8),
                      const WText(
                        text: "No activity yet",
                        fontSize: 12,
                        color: AppColors.c_07,
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}