import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skool/core/resources/app_colors.dart';
import 'package:skool/core/widgets/w_button.dart';
import 'package:skool/core/widgets/w_text.dart';
import 'package:skool/core/widgets/w_textfield.dart';

@RoutePage()
class GeneralScreen extends StatefulWidget {
  const GeneralScreen({super.key});

  @override
  State<GeneralScreen> createState() => GeneralScreenState();
}

class GeneralScreenState extends State<GeneralScreen> {
  final TextEditingController textController = TextEditingController();
  int _selectedValue = 0;
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
            text: "General",
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
          margin: EdgeInsets.only(top: 16),
          padding: const EdgeInsets.all(20),
          constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height - 76),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.c_f2,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const WText(
                        text: "Icon",
                        fontWeight: FontWeight.w600,
                      ),
                      const SizedBox(height: 4),
                      const WText(
                        text: "Recommended:",
                        fontSize: 12,
                      ),
                      const SizedBox(height: 4),
                      const WText(
                        text: "128x128",
                        fontSize: 12,
                      ),
                      const SizedBox(height: 12),
                      WButton(
                        borderRadius: 8,
                        color: AppColors.c_bc,
                        buttonType: ButtonType.outline,
                        verticalPadding: 12,
                        horizontalPadding: 24,
                        textColor: AppColors.c_2a,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        buttonPositionType:
                            MainAxisAlignment.center, // Changed to center
                        text: "CHANGE",
                        onTap: () => {},
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 24),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 105,
                    width: 197,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.c_f2,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const WText(
                        text: "Cover",
                        fontWeight: FontWeight.w600,
                      ),
                      const SizedBox(height: 4),
                      const WText(
                        text: "Recommended:",
                        fontSize: 12,
                      ),
                      const SizedBox(height: 4),
                      const WText(
                        text: "1084x576",
                        fontSize: 12,
                      ),
                      const SizedBox(height: 12),
                      WButton(
                        borderRadius: 8,
                        color: AppColors.c_bc,
                        buttonType: ButtonType.outline,
                        verticalPadding: 12,
                        horizontalPadding: 24,
                        textColor: AppColors.c_2a,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        buttonPositionType:
                            MainAxisAlignment.center, // Changed to center
                        text: "CHANGE",
                        onTap: () => {},
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const WText(
                text: "Group name",
                fontSize: 12,
                color: AppColors.c_a1,
              ),
              const SizedBox(height: 8),
              WTextField(
                controller: textController,
                hint: "Digital Marketer",
                hintFontSize: 12,
                autoFocus: true,
              ),
              const SizedBox(height: 4),
              const Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "16/30",
                  style: TextStyle(fontSize: 12, color: AppColors.c_a1),
                ),
              ),
              const SizedBox(height: 24),
              const WText(
                text: "URL",
                fontSize: 12,
                color: AppColors.c_a1,
              ),
              const SizedBox(height: 8),
              WTextField(
                controller: textController,
                hint: "Digital Marketer",
                hintFontSize: 12,
                autoFocus: true,
              ),
              const SizedBox(height: 4),
              const Text(
                "You can change your URL with a paid account.",
                style: TextStyle(fontSize: 12, color: AppColors.c_a1),
              ),
              const SizedBox(height: 24),
              const WText(
                text: "Initials",
                fontSize: 12,
                color: AppColors.c_a1,
              ),
              const SizedBox(height: 8),
              WTextField(
                controller: textController,
                hint: "DM",
                hintFontSize: 12,
                autoFocus: true,
              ),
              const SizedBox(height: 24),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.c_f2,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const WText(
                          text: "Color",
                          fontSize: 12,
                          color: AppColors.c_a1,
                        ),
                        const SizedBox(height: 8),
                        WTextField(
                          controller: textController,
                          hint: "#0452B4",
                          hintFontSize: 12,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Container(
                decoration: BoxDecoration(
                  color: _selectedValue == 0 ? AppColors.c_f0 : null,
                  border: Border.all(
                      color: _selectedValue == 0
                          ? AppColors.c_bc
                          : AppColors.c_e0),
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Radio<int>(
                          value: 0,
                          fillColor: MaterialStateProperty.all(AppColors.c_2a),
                          groupValue: _selectedValue,
                          onChanged: (int? value) {
                            setState(() {
                              _selectedValue = value!;
                            });
                          },
                        ),
                        const SizedBox(width: 12),
                        Row(
                          children: [
                            SvgPicture.asset("assets/svg/icon/lock.svg"),
                            const SizedBox(width: 6),
                            const WText(
                              text: "Private",
                              fontWeight: FontWeight.w500,
                              color: AppColors.c_07,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      "Only members can see who's in the group and what they post. Content is hidden from search engines.",
                      style: TextStyle(
                          fontSize: 14, color: AppColors.c_07, height: 17 / 17),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Container(
                decoration: BoxDecoration(
                  color: _selectedValue == 1 ? AppColors.c_f0 : null,
                  border: Border.all(
                      color: _selectedValue == 1
                          ? AppColors.c_bc
                          : AppColors.c_e0),
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Radio<int>(
                          value: 1,
                          fillColor: MaterialStateProperty.all(AppColors.c_2a),
                          groupValue: _selectedValue,
                          onChanged: (int? value) {
                            setState(() {
                              _selectedValue = value!;
                            });
                          },
                        ),
                        const SizedBox(width: 12),
                        Row(
                          children: [
                            SvgPicture.asset("assets/svg/icon/public.svg"),
                            const SizedBox(width: 6),
                            const WText(
                              text: "Public",
                              fontWeight: FontWeight.w500,
                              color: AppColors.c_07,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      "Anyone can see who's in the group and what they post. Content is discoverable by search engines.",
                      style: TextStyle(
                          fontSize: 14, color: AppColors.c_07, height: 17 / 17),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 24),
              WButton(
                borderRadius: 8,
                color: AppColors.c_e0,
                verticalPadding: 12,
                horizontalPadding: 24,
                textColor: AppColors.c_a1,
                fontSize: 14,
                fontWeight: FontWeight.w600,
                text: "UPDATE SETTINGS",
                onTap: () => {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
