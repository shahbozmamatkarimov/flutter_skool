import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skool/core/resources/app_colors.dart';
import 'package:skool/core/widgets/w_button.dart';
import 'package:skool/core/widgets/w_text.dart';

@RoutePage()
class MetricsScreen extends StatefulWidget {
  const MetricsScreen({super.key});

  @override
  State<MetricsScreen> createState() => MetricsScreenState();
}

class MetricsScreenState extends State<MetricsScreen> {
  final List<String> addDropdown = <String>[
    "Daily active",
    "Weekly active",
    "Monthly active",
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c_f0,
      appBar: PreferredSize(
        preferredSize:
            const Size.fromHeight(60.0), // Set your preferred height here
        child: AppBar(
          backgroundColor: AppColors.white,
          title: const WText(
            text: "Metrics",
            fontWeight: FontWeight.w600,
            color: AppColors.c_07,
          ),
          leading: IconButton(
            icon: SvgPicture.asset(
                "assets/svg/icon/back_route.svg"), // Your custom icon here
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: AppColors.white,
          margin: const EdgeInsets.only(top: 16),
          padding: const EdgeInsets.all(20),
          constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height - 76),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "In the past 30 days, your group stayed at 1 members and 1 members (100%) were active.",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              const WText(
                text: "Total members",
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
              const SizedBox(height: 32),
              const WText(
                text: "Developing ...",
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const WText(
                    text: "Active members",
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                  WButton(
                    fontSize: 14,
                    verticalPadding: 0,
                    horizontalPadding: 0,
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
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  WButton(
                                    borderRadius: 4,
                                    verticalPadding: 4,
                                    horizontalPadding: 4,
                                    text: "",
                                    onTap: () => Navigator.pop(context),
                                    child: SvgPicture.asset(
                                        "assets/svg/icon/close.svg"),
                                  ),
                                  for (String name in addDropdown)
                                    SizedBox(
                                      width: double.infinity,
                                      child: WButton(
                                        borderRadius: 4,
                                        verticalPadding: 16,
                                        horizontalPadding: 0,
                                        buttonPositionType:
                                            MainAxisAlignment.start,
                                        text: name,
                                        onTap: () => Navigator.pop(context),
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
                        const Text(
                          "Monthly active",
                          style: TextStyle(fontSize: 14, color: AppColors.c_2a),
                        ),
                        const SizedBox(width: 14),
                        SvgPicture.asset(
                          "assets/svg/icon/arrow.svg",
                          color: AppColors.c_2a,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              const WText(
                text: "Developing ...",
              ),
              const SizedBox(height: 24),
              const WText(
                text: "Daily activity",
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
              const SizedBox(height: 32),
              const WText(
                text: "Developing ...",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
