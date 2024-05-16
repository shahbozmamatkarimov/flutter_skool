import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skool/core/resources/app_colors.dart';
import 'package:skool/core/widgets/w_button.dart';
import 'package:skool/core/widgets/w_textfield.dart';

class AddModule extends StatefulWidget {
  const AddModule({super.key});

  @override
  State<AddModule> createState() => _AddModuleState();
}

class _AddModuleState extends State<AddModule> {
  final List<String> postIcons = ["link", "gif"];
  final List<String> addDropdown = <String>[
    "Add resource link",
    "Add resource file",
    "Add transcript",
  ];
  bool switchButton = false;
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
          color: AppColors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              WTextField(
                contentPadding: const EdgeInsets.all(12),
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
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.c_f2,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: Center(
                  child: Column(
                    children: [
                      SvgPicture.asset("assets/svg/icon/add_video.svg"),
                      const SizedBox(height: 4),
                      const Text(
                        "Add video",
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
              WTextField(
                contentPadding: const EdgeInsets.all(12),
                controller: descriptionController,
                hint: "Write something...",
                hintFontSize: 12,
                maxLines: 6,
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WButton(
                    color: AppColors.c_e0,
                    buttonType: ButtonType.outline,
                    borderRadius: 4,
                    fontSize: 14,
                    verticalPadding: 12,
                    horizontalPadding: 12,
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
                          "Add",
                          style: TextStyle(fontSize: 14, color: AppColors.c_07),
                        ),
                        const SizedBox(width: 14),
                        SvgPicture.asset("assets/svg/icon/arrow.svg")
                      ],
                    ),
                  ),
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
                      const SizedBox(width: 24),
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
                        trackOutlineColor: const MaterialStatePropertyAll(
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
                ],
              ),
              const SizedBox(height: 70),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: WButton(
                      borderRadius: 8,
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
                      text: "save".toUpperCase(),
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
