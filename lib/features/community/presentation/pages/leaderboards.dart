import 'package:flutter/material.dart';
import 'package:skool/core/resources/app_colors.dart';
import 'package:skool/core/widgets/w_button.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class LeaderBoards extends StatefulWidget {
  @override
  _LeaderBoardsState createState() => _LeaderBoardsState();
}

class _LeaderBoardsState extends State<LeaderBoards> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: AppColors.white),
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
                  // dayFormat: 'EEE',
                  onTap: (calendarTapDetails) {
                    setState(() {
                      currentTime = [
                        calendarTapDetails.date?.day,
                        calendarTapDetails.date?.month
                      ];
                    });
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
    ));
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
