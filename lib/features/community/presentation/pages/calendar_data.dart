import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skool/core/resources/app_colors.dart';
import 'package:skool/core/widgets/w_button.dart';
import 'package:skool/core/widgets/w_text.dart';
import 'package:skool/core/widgets/w_text_link.dart';
import 'package:skool/features/community/presentation/pages/add_event.dart';

class CalendarData extends StatelessWidget {
  CalendarData({super.key});

  final List<String> postIcons = ["link", "gif"];
  final List<String> addToCalendar = [
    "Google",
    "Apple",
    "Outlook",
    "Outlook.com",
    "Yahoo"
  ];
  final TextEditingController commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: Row(
          children: [
            Image.asset("assets/image/logo.png"),
            const SizedBox(
              width: 12,
            ),
            const Text(
              "Skool community",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.none,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 16),
              padding: const EdgeInsets.only(bottom: 100),
              constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height - 76),
              color: AppColors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    'https://picsum.photos/250?image=1',
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.width < 370 ? 166 : 186,
                    width: double.infinity,
                  ),
                  const SizedBox(height: 6),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const WText(
                              text: "Title",
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                            const SizedBox(width: 16),
                            WButton(
                              text: "",
                              verticalPadding: 10,
                              horizontalPadding: 12,
                              buttonType: ButtonType.outline,
                              color: AppColors.c_bc,
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const AddEvent(),
                                ),
                              ),
                              child:
                                  SvgPicture.asset("assets/svg/icon/edit.svg"),
                            ),
                          ],
                        ),
                        const SizedBox(height: 28),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              "assets/svg/members/calendar.svg",
                              width: 24,
                            ),
                            const SizedBox(width: 16),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                WText(
                                  text: "Friday, February 16th @ 12:30am - 1am",
                                  fontWeight: FontWeight.w500,
                                ),
                                SizedBox(height: 4),
                                WText(
                                  text: "Tashkent time",
                                  fontSize: 14,
                                  color: AppColors.c_a1,
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            SvgPicture.asset(
                              "assets/svg/icon/zoom.svg",
                              width: 24,
                            ),
                            const SizedBox(width: 16),
                            WTextLink(
                              text: "https://zoom.com/fjdklfdjfkldfjdf",
                              onTap: () => {},
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        const WText(
                          text: "Online meeting",
                          fontSize: 14,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 20,
              right: 20,
              bottom: 20,
              child: SizedBox(
                width: double.infinity,
                child: WButton(
                  borderRadius: 8,
                  color: AppColors.c_bc,
                  verticalPadding: 12,
                  horizontalPadding: 24,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  text: "",
                  onTap: () => {
                    showModalBottomSheet<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                              color: Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(16))),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Stack(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          for (String data in addToCalendar)
                                            SizedBox(
                                              width: double.infinity,
                                              child: WButton(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                textColor: AppColors.c_07,
                                                verticalPadding: 12,
                                                horizontalPadding: 12,
                                                buttonPositionType:
                                                    MainAxisAlignment.start,
                                                text: data,
                                                onTap: () =>
                                                    Navigator.pop(context),
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Positioned(
                                  right: 16,
                                  top: 8,
                                  child: WButton(
                                    borderRadius: 4,
                                    verticalPadding: 4,
                                    horizontalPadding: 4,
                                    text: "",
                                    onTap: () => Navigator.pop(context),
                                    child: SvgPicture.asset(
                                        "assets/svg/icon/close.svg"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  },
                  child: Row(
                    children: [
                      Text(
                        "Add to calendar".toUpperCase(),
                        style: const TextStyle(
                            fontSize: 14,
                            color: AppColors.c_07,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(width: 10),
                      SvgPicture.asset("assets/svg/icon/arrow.svg")
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
