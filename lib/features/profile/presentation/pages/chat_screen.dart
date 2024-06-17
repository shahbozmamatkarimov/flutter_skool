import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skool/core/resources/app_colors.dart';
import 'package:skool/core/widgets/w_text.dart';

@RoutePage()
class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => ChatScreenState();
}

class ChatScreenState extends State<ChatScreen> {
  final List<String> access = <String>[
    "ON",
    "OFF",
  ];
  final List<List<String>> notificationList = [
    [
      "Notifications",
      "Notify me with sound and blinking tab header when somebody messages me."
    ],
    [
      "Email notifications",
      "If you're offline and somebody messages you, we'll let you know via email. We won't email you if you're online."
    ]
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
            text: "Chat",
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
                  for (var note in notificationList)
                    Container(
                      padding: const EdgeInsets.all(12),
                      margin: const EdgeInsets.only(bottom: 24),
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.c_e0),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              WText(
                                text: note[0],
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                              ),
                              Switch(
                                // This bool value toggles the switch.
                                value: switchButton,
                                inactiveThumbImage:
                                    const AssetImage("assets/image/switch.png"),
                                activeColor: AppColors.white,
                                activeTrackColor: AppColors.c_2a,
                                inactiveThumbColor: AppColors.white,
                                inactiveTrackColor: AppColors.c_e0,
                                focusColor: AppColors.transparent,
                                trackOutlineColor:
                                    const MaterialStatePropertyAll(
                                        AppColors.transparent),
                                onChanged: (bool value) {
                                  // This is called when the user toggles the switch.
                                  setState(() {
                                    switchButton = value;
                                  });
                                },
                              ),
                            ],
                          ),
                          const SizedBox(height: 24),
                          WText(
                            text: note[1],
                            color: AppColors.c_07,
                            fontSize: 14,
                          )
                        ],
                      ),
                    ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    margin: const EdgeInsets.only(bottom: 24),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.c_e0),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const WText(
                          text: "Who can message me?",
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                        const SizedBox(height: 24),
                        const WText(
                          text:
                              "Only members in the group you're in can message you. You choose what group users can message you from by turning your chat on/off below.",
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
                                  const Text(
                                    "Digital Marketer",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.c_e0),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                height: 45,
                                width: 80,
                                child: DropdownButton<String>(
                                  value: access_value,
                                  icon: SvgPicture.asset(
                                      "assets/svg/icon/arrow.svg"),
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
                                  items: access.map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Row(
                                        children: [
                                          Text(value),
                                          const SizedBox(width: 8),
                                          access_value == value
                                              ? SvgPicture.asset(
                                                  "assets/svg/icon/true.svg")
                                              : const Text(""),
                                        ],
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ])
                      ],
                    ),
                  ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.only(bottom: 24),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.c_e0),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  WText(
                    text: "Blocked users",
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                  SizedBox(height: 24),
                  WText(
                    text: "You have no blocked users.",
                    color: AppColors.c_07,
                    fontSize: 14,
                  )
                ],
              ),
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
