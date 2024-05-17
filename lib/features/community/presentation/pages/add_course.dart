import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skool/core/resources/app_colors.dart';
import 'package:skool/core/widgets/w_button.dart';
import 'package:skool/core/widgets/w_textfield.dart';

class AddCourse extends StatefulWidget {
  const AddCourse({super.key});

  @override
  State<AddCourse> createState() => _AddCourseState();
}

class _AddCourseState extends State<AddCourse> {
  final List<String> postIcons = ["link", "gif"];
  final List<String> access = <String>[
    "All members have access",
    "Only some members have access",
    "Members of a certain level",
  ];
  late String access_value = access.first;
  final List<int> access_level = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  late int access_level_value = access_level.first;

  bool switchButton = true;

  final TextEditingController textController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            const Size.fromHeight(60.0), // Set your preferred height here
        child: AppBar(
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
          margin: const EdgeInsets.only(top: 20),
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
          decoration: BoxDecoration(
              color: AppColors.white, borderRadius: BorderRadius.circular(16)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(
                width: double.infinity,
                child: Text(
                  "Add course",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppColors.c_07),
                ),
              ),
              const SizedBox(height: 24),
              WTextField(
                controller: textController,
                hint: "Title",
                hintFontSize: 12,
                autoFocus: true,
              ),
              const SizedBox(height: 8),
              const Text(
                "0/50",
                style: TextStyle(fontSize: 12, color: AppColors.c_a1),
              ),
              const SizedBox(height: 12),
              WTextField(
                contentPadding: const EdgeInsets.all(12),
                controller: descriptionController,
                hint: "Write something...",
                hintFontSize: 12,
                maxLines: 6,
              ),
              const SizedBox(height: 8),
              const Text(
                "0/150",
                style: TextStyle(fontSize: 12, color: AppColors.c_a1),
              ),
              const SizedBox(height: 12),
              const SizedBox(
                width: double.infinity,
                child: Text(
                  "Who can access this course",
                  style: TextStyle(fontSize: 12, color: AppColors.c_a1),
                ),
              ),
              const SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.c_e0),
                    borderRadius: BorderRadius.circular(8)),
                height: 40,
                child: DropdownButton<String>(
                  value: access_value,
                  icon: SvgPicture.asset("assets/svg/icon/arrow.svg"),
                  elevation: 0,
                  padding: const EdgeInsets.all(12),
                  borderRadius: BorderRadius.circular(6),
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
                  items: access.map<DropdownMenuItem<String>>((String value) {
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
              access_value == "Only some members have access"
                  ? SizedBox(
                      child: Column(
                        children: [
                          const SizedBox(height: 12),
                          const SizedBox(
                            width: double.infinity,
                            child: Text(
                              "Access starts at level",
                              style: TextStyle(
                                  fontSize: 12, color: AppColors.c_a1),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: AppColors.c_e0),
                                borderRadius: BorderRadius.circular(8)),
                            height: 40,
                            child: DropdownButton<int>(
                              value: access_level_value,
                              icon:
                                  SvgPicture.asset("assets/svg/icon/arrow.svg"),
                              elevation: 0,
                              padding: const EdgeInsets.all(12),
                              borderRadius: BorderRadius.circular(6),
                              dropdownColor: AppColors.white,
                              focusColor: AppColors.c_e0,
                              isExpanded: true,
                              style: const TextStyle(
                                color: AppColors.c_07,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                              underline: Container(height: 0),
                              selectedItemBuilder: (BuildContext context) {
                                return access_level.map<Widget>((int item) {
                                  return DropdownMenuItem<String>(
                                    value: "$item",
                                    child: Text("$item"),
                                  );
                                }).toList();
                              },
                              onChanged: (int? value) {
                                // This is called when the user selects an item.
                                setState(() {
                                  access_level_value = value!;
                                });
                              },
                              items: access_level
                                  .map<DropdownMenuItem<int>>((int value) {
                                return DropdownMenuItem<int>(
                                  value: value,
                                  child: Row(
                                    children: [
                                      Text("$value"),
                                      const SizedBox(width: 8),
                                      access_level_value == value
                                          ? SvgPicture.asset(
                                              "assets/svg/icon/true.svg")
                                          : const Text(""),
                                    ],
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                    )
                  : const Text(""),
              const SizedBox(height: 24),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.c_f2,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: Center(
                  child: Column(
                    children: [
                      SvgPicture.asset("assets/svg/icon/add_photo.svg"),
                      const SizedBox(height: 4),
                      const Text(
                        "Add a photo",
                        style: TextStyle(
                            color: AppColors.c_2a,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Cover",
                        style: TextStyle(
                            color: AppColors.c_07,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "1460x752 px",
                        style: TextStyle(
                            color: AppColors.c_a1,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  WButton(
                    borderRadius: 8,
                    buttonType: ButtonType.outline,
                    color: AppColors.c_e0,
                    verticalPadding: 12,
                    horizontalPadding: 24,
                    textColor: AppColors.c_a1,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    buttonPositionType: MainAxisAlignment.start,
                    text: "change".toUpperCase(),
                    onTap: () => {},
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    switchButton ? "Published" : "Draft",
                    style: const TextStyle(
                        color: AppColors.c_07,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
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
                        const MaterialStatePropertyAll(AppColors.transparent),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: WButton(
                      borderRadius: 8,
                      buttonType: ButtonType.outline,
                      color: AppColors.c_e0,
                      verticalPadding: 12,
                      horizontalPadding: 24,
                      textColor: AppColors.c_a1,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      buttonPositionType:
                          MainAxisAlignment.center, // Changed to center
                      text: "cancel".toUpperCase(),
                      onTap: () => {},
                    ),
                  ),
                  const SizedBox(width: 16), // Adjust the width for spacing
                  Expanded(
                    child: WButton(
                      borderRadius: 8,
                      color: AppColors.c_e0,
                      verticalPadding: 12,
                      horizontalPadding: 24,
                      textColor: AppColors.c_a1,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      buttonPositionType:
                          MainAxisAlignment.center, // Changed to center
                      text: "add".toUpperCase(),
                      onTap: () => {},
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
