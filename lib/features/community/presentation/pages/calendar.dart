import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:skool/core/resources/app_colors.dart';
import 'package:skool/core/widgets/w_button.dart';
import 'package:flutter_svg/svg.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  final List<String> data = [];

  bool showTable = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        Transform.rotate(
                          angle: 90 * (pi / 180), // Convert degrees to radians
                          child: WButton(
                            text: "",
                            verticalPadding: 0,
                            horizontalPadding: 0,
                            color: AppColors.transparent,
                            onTap: () => {},
                            child: SvgPicture.asset(
                              "assets/svg/icon/arrow.svg",
                              color: AppColors.c_07,
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        const Text(
                          "Feb 2024",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(width: 12),
                        Transform.rotate(
                          angle: 270 * (pi / 180), // Convert degrees to radians
                          child: WButton(
                            text: "",
                            verticalPadding: 0,
                            horizontalPadding: 0,
                            color: AppColors.transparent,
                            onTap: () => {},
                            child: SvgPicture.asset(
                              "assets/svg/icon/arrow.svg",
                              color: AppColors.c_07,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 20),
                    showTable
                        ? const Text("")
                        : WButton(
                            verticalPadding: 0,
                            horizontalPadding: 0,
                            fontWeight: FontWeight.w500,
                            textColor: AppColors.c_2a,
                            color: AppColors.transparent,
                            onTap: () => {},
                            text: "Today",
                          ),
                  ],
                ),
                showTable
                    ? WButton(
                        text: "",
                        verticalPadding: 8,
                        horizontalPadding: 8,
                        buttonType: ButtonType.outline,
                        color: AppColors.c_bc,
                        onTap: () => {
                          setState(() {
                            showTable = !showTable;
                          }),
                        },
                        child: SvgPicture.asset(
                            "assets/svg/icon/show_calendar.svg"),
                      )
                    : Row(
                        children: [
                          WButton(
                            text: "",
                            verticalPadding: 8,
                            horizontalPadding: 8,
                            buttonType: ButtonType.outline,
                            color: AppColors.c_bc,
                            onTap: () => {},
                            child: SvgPicture.asset("assets/svg/icon/plus.svg"),
                          ),
                          const SizedBox(width: 16),
                          WButton(
                            text: "",
                            verticalPadding: 8,
                            horizontalPadding: 8,
                            buttonType: ButtonType.outline,
                            color: AppColors.c_bc,
                            onTap: () => {
                              setState(() {
                                showTable = !showTable;
                              }),
                            },
                            child: SvgPicture.asset(
                                "assets/svg/icon/show_table.svg"),
                          ),
                        ],
                      ),
              ],
            ),
            const SizedBox(height: 24),
            showTable
                ? ListView.builder(
                    shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: AppColors.white,
                        ),
                        height: 96,
                        clipBehavior: Clip.hardEdge,
                        margin: const EdgeInsets.only(bottom: 20),
                        child: Row(
                          children: [
                            Image.network(
                              'https://picsum.photos/250?image=$index',
                              fit: BoxFit.cover,
                              height: 96,
                              width: 128,
                            ),
                            const SizedBox(width: 12),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Wed, Mar 6 @ 6am - 7am",
                                  style: TextStyle(
                                      fontSize: 12, color: AppColors.c_07),
                                ),
                                const SizedBox(height: 12),
                                const Text(
                                  "Live Q&A / Office Hours",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: AppColors.c_07,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(height: 12),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                        "assets/svg/icon/zoom.svg"),
                                    const SizedBox(width: 12),
                                    const Text(
                                      "Zoom",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: AppColors.c_07,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    },
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
