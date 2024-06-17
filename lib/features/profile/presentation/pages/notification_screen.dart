import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skool/core/resources/app_colors.dart';
import 'package:skool/core/widgets/w_button.dart';
import 'package:skool/core/widgets/w_text.dart';

@RoutePage()
class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => NotificationScreenState();
}

class NotificationScreenState extends State<NotificationScreen> {
  final List<String> access = <String>[
    "(GMT +05:00) Asia/Tashkent",
    "(GMT +05:00) Asia/Uzbekistan",
    "(GMT +05:00) Asia/Samarkand",
  ];
  late String access_value = access.first;

  bool switchButton = true;

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
            text: "Notifications",
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: AppColors.white,
              margin: EdgeInsets.only(top: 16),
              padding: const EdgeInsets.all(20),
              constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height - 76),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const WText(
                    text: "User notifications",
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                  const SizedBox(height: 24),
                  const WText(
                    text: "When somebody follows me",
                    fontSize: 14,
                    color: AppColors.c_07,
                  ),
                  const SizedBox(height: 12),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.c_e0),
                        borderRadius: BorderRadius.circular(4)),
                    height: 45,
                    child: DropdownButton<String>(
                      value: access_value,
                      icon: SvgPicture.asset("assets/svg/icon/arrow.svg"),
                      elevation: 0,
                      padding: const EdgeInsets.all(12),
                      borderRadius: BorderRadius.circular(4),
                      dropdownColor: AppColors.white,
                      focusColor: AppColors.c_e0,
                      isExpanded: true,
                      style: const TextStyle(
                        color: AppColors.c_07,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                      underline: Container(
                        height: 0,
                        color: Colors.deepPurpleAccent,
                      ),
                      selectedItemBuilder: (BuildContext context) {
                        return access.map<Widget>((String item) {
                          return DropdownMenuItem<String>(
                            value: item,
                            child: Text(item),
                          );
                        }).toList();
                      },
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          access_value = value!;
                        });
                      },
                      items:
                          access.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Row(
                            children: [
                              Text(value),
                              const SizedBox(width: 8),
                              access_value == value
                                  ? SvgPicture.asset("assets/svg/icon/true.svg")
                                  : const Text(""),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  const SizedBox(height: 24),
                  const WText(
                    text: "When I earn money from referrals",
                    fontSize: 14,
                    color: AppColors.c_07,
                  ),
                  const SizedBox(height: 12),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.c_e0),
                        borderRadius: BorderRadius.circular(4)),
                    height: 45,
                    child: DropdownButton<String>(
                      value: access_value,
                      icon: SvgPicture.asset("assets/svg/icon/arrow.svg"),
                      elevation: 0,
                      padding: const EdgeInsets.all(12),
                      borderRadius: BorderRadius.circular(4),
                      dropdownColor: AppColors.white,
                      focusColor: AppColors.c_e0,
                      isExpanded: true,
                      style: const TextStyle(
                        color: AppColors.c_07,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                      underline: Container(
                        height: 0,
                        color: Colors.deepPurpleAccent,
                      ),
                      selectedItemBuilder: (BuildContext context) {
                        return access.map<Widget>((String item) {
                          return DropdownMenuItem<String>(
                            value: item,
                            child: Text(item),
                          );
                        }).toList();
                      },
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          access_value = value!;
                        });
                      },
                      items:
                          access.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Row(
                            children: [
                              Text(value),
                              const SizedBox(width: 8),
                              access_value == value
                                  ? SvgPicture.asset("assets/svg/icon/true.svg")
                                  : const Text(""),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  const SizedBox(height: 24),
                  const WText(
                    text: "Group notifications",
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                  const SizedBox(height: 24),
                  const WText(
                    text:
                        "Set the optimal digest and email notification frequency for the groups you’re in, or toggle post likes notifications.",
                    color: AppColors.c_07,
                    fontSize: 14,
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          // Image.asset("assets/image/logo.png"),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 6, vertical: 10),
                            decoration: BoxDecoration(
                              color: AppColors.c_2a,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const WText(
                              text: "DM",
                              color: AppColors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(width: 16),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Digital Marketer",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "Weekly digest • Hourly bundle",
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          )
                        ],
                      ),
                      WButton(
                        borderRadius: 8,
                        color: AppColors.c_e0,
                        buttonType: ButtonType.outline,
                        verticalPadding: 12,
                        horizontalPadding: 24,
                        textColor: AppColors.c_a1,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        buttonPositionType:
                            MainAxisAlignment.center, // Changed to center
                        text: "change".toUpperCase(),
                        onTap: () => {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
