import 'dart:math';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:skool/core/resources/app_colors.dart';
import 'package:skool/core/widgets/w_button.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skool/core/widgets/w_text.dart';
import 'package:skool/features/community/presentation/pages/add_event.dart';
import 'package:skool/features/community/presentation/pages/calendar_data.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  final List<String> data = [];

  bool showTable = false;

  List<dynamic> currentTime = [];
  List<String> weeks = [
    "Mon",
    "Tue",
    "Wed",
    "Thu",
    "Fri",
    "Sat",
    "Sun",
  ];

  String _month = "";
  String _year = "";

  CalendarController _calendarController = CalendarController();

  void viewChanged(ViewChangedDetails viewChangedDetails) {
    SchedulerBinding.instance!.addPostFrameCallback((Duration duration) {
      setState(() {
        _month = DateFormat('MMM')
            .format(viewChangedDetails
                .visibleDates[viewChangedDetails.visibleDates.length ~/ 2])
            .toString();
        _year = DateFormat('yyyy')
            .format(viewChangedDetails
                .visibleDates[viewChangedDetails.visibleDates.length ~/ 2])
            .toString();
      });
    });
  }

  final DateTime today = DateTime.now();

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
                            onTap: () => _calendarController.backward!(),
                            child: SvgPicture.asset(
                              "assets/svg/icon/arrow.svg",
                              color: AppColors.c_07,
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Text(
                          "$_month $_year",
                          style: const TextStyle(fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(width: 12),
                        Transform.rotate(
                          angle: 270 * (pi / 180), // Convert degrees to radians
                          child: WButton(
                            text: "",
                            verticalPadding: 0,
                            horizontalPadding: 0,
                            color: AppColors.transparent,
                            onTap: () => _calendarController.forward!(),
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
                            onTap: () => {
                              // Jump to the current date
                              // _calendarController.jumpToDate(today);
                              // _calendarController.displayDate!(today)
                              // _calendarController.jumpToDate(DateTime.now());
                              _calendarController.displayDate = DateTime.now(),
                            },
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
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AddEvent(),
                              ),
                            ),
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
                : Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.white),
                    clipBehavior: Clip.hardEdge,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            for (String week in weeks)
                              Expanded(
                                // width: 50,
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 28,
                                  child: Text(
                                    week,
                                    style: const TextStyle(
                                        fontSize: 10, color: AppColors.c_07),
                                  ),
                                ),
                              ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        SizedBox(
                          height: 440,
                          child: SfCalendar(
                            view: CalendarView.month,
                            onViewChanged: viewChanged,
                            controller: _calendarController,
                            onTap: (calendarTapDetails) {
                              setState(() {
                                currentTime = [
                                  calendarTapDetails.date?.day,
                                  calendarTapDetails.date?.month
                                ];
                              });
                              showModalBottomSheet<void>(
                                context: context,
                                builder: (BuildContext context) {
                                  return SingleChildScrollView(
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      decoration: const BoxDecoration(
                                          color: Color(0xFFFFFFFF),
                                          borderRadius: BorderRadius.vertical(
                                              top: Radius.circular(16))),
                                      child: Padding(
                                        padding: const EdgeInsets.all(20),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                const Text(
                                                  "Events",
                                                  style: TextStyle(
                                                    fontSize: 24,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                const SizedBox(width: 10),
                                                WButton(
                                                  borderRadius: 4,
                                                  verticalPadding: 4,
                                                  horizontalPadding: 4,
                                                  text: "",
                                                  onTap: () =>
                                                      Navigator.pop(context),
                                                  child: SvgPicture.asset(
                                                      "assets/svg/icon/close.svg"),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 28),
                                            GridView.builder(
                                              shrinkWrap: true,
                                              scrollDirection: Axis.vertical,
                                              gridDelegate:
                                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 1,
                                                // crossAxisSpacing: 16.0,
                                                mainAxisExtent: 88,
                                                mainAxisSpacing: 16,
                                              ),
                                              itemCount:
                                                  10, // Change this to the number of cards you want
                                              itemBuilder:
                                                  (BuildContext context,
                                                      int index) {
                                                return SizedBox(
                                                  width: double.infinity,
                                                  child: WButton(
                                                    borderRadius: 12,
                                                    verticalPadding: 12,
                                                    horizontalPadding: 16,
                                                    buttonType:
                                                        ButtonType.outline,
                                                    buttonPositionType:
                                                        MainAxisAlignment.start,
                                                    color: AppColors.c_a1,
                                                    text: "",
                                                    onTap: () => {
                                                      Navigator.pop(context),
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              CalendarData(),
                                                        ),
                                                      ),
                                                    },
                                                    child: Row(
                                                      children: [
                                                        const Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              WText(
                                                                text: "Chu",
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                              SizedBox(
                                                                  height: 8),
                                                              WText(
                                                                text: "15",
                                                                fontSize: 24,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                            ]),
                                                        const SizedBox(
                                                            width: 21),
                                                        Container(
                                                          width: 3,
                                                          height: 52,
                                                          decoration:
                                                              BoxDecoration(
                                                            color:
                                                                AppColors.c_2a,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        2),
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                            width: 21),
                                                        const Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            WText(
                                                              text: "Title",
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                            SizedBox(height: 8),
                                                            WText(
                                                              text:
                                                                  "12:30am - 1am",
                                                              fontSize: 14,
                                                              color: AppColors
                                                                  .c_a1,
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                            monthCellBuilder: monthCellBuilder,
                            cellBorderColor: AppColors.transparent,
                            backgroundColor: AppColors.white,
                            headerHeight: 0,
                            selectionDecoration: BoxDecoration(
                              border: Border.all(color: AppColors.transparent),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
          ],
        ),
      ),
    );
  }

  Widget monthCellBuilder(BuildContext context, MonthCellDetails details) {
    bool isSelectedDate = false;
    if (currentTime.isEmpty) {
      isSelectedDate = DateTime.now().day == details.date.day &&
          DateTime.now().month == details.date.month;
    } else {
      isSelectedDate = currentTime[0] == details.date.day &&
          currentTime[1] == details.date.month;
    }

    bool otherMonth = true;
    bool currentMonth = false;

    bool textColor = details.date.month == (details.visibleDates[0].month + 1)
        ? otherMonth
        : details.date.month ==
                (details.visibleDates[details.visibleDates.length - 1].month +
                    1)
            ? otherMonth
            : currentMonth;
    return WButton(
      text: "",
      color: isSelectedDate ? AppColors.c_bc : AppColors.white,
      onTap: () => {},
      verticalPadding: 0,
      horizontalPadding: 0,
      child: SizedBox(
        height: 67,
        child: Column(
          children: [
            const SizedBox(height: 24),
            Text(
              details.date.day.toString(),
              style:
                  TextStyle(color: textColor ? AppColors.c_07 : AppColors.c_a1),
            ),
            const SizedBox(height: 1),
            Container(
              width: 6,
              height: 6,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: textColor
                    ? AppColors.c_2a
                    : AppColors.c_2a.withOpacity(0.3),
              ),
            )
          ],
        ),
      ),
    );
  }
}
