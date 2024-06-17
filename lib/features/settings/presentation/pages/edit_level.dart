import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skool/core/resources/app_colors.dart';
import 'package:skool/core/widgets/w_button.dart';
import 'package:skool/core/widgets/w_text.dart';
import 'package:skool/core/widgets/w_textfield.dart';

// @RoutePage()
class EditLevel extends StatefulWidget {
  const EditLevel({super.key});

  @override
  State<EditLevel> createState() => EditLevelState();
}

class EditLevelState extends State<EditLevel> {
  final TextEditingController descriptionController = TextEditingController();

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
            text: "Gamification",
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
          width: double.infinity,
          margin: EdgeInsets.only(top: 16),
          padding: const EdgeInsets.all(20),
          constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height - 76),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const WText(
                text: "Edit level",
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
              const SizedBox(height: 24),
              const WText(
                text: "Name",
                fontSize: 12,
                color: AppColors.c_a1,
              ),
              const SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.c_e0),
                  borderRadius: BorderRadius.circular(4),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  children: [
                    const WText(
                      text: "Level 1",
                      fontSize: 14,
                      color: AppColors.c_a1,
                    ),
                    const SizedBox(width: 8),
                    Container(
                      width: 1,
                      height: 20,
                      decoration: const BoxDecoration(color: AppColors.c_e0),
                    ),
                    Expanded(
                      child: WTextField(
                        borderColor: AppColors.transparent,
                        contentPadding: const EdgeInsets.all(8),
                        controller: descriptionController,
                        hint: "Name",
                        hintFontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 4),
              const Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "7/20",
                  style: TextStyle(fontSize: 12, color: AppColors.c_a1),
                ),
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  WButton(
                    borderRadius: 8,
                    color: AppColors.c_bc,
                    verticalPadding: 12,
                    horizontalPadding: 24,
                    textColor: AppColors.c_07,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    buttonPositionType:
                        MainAxisAlignment.center, // Changed to center
                    text: "Save".toUpperCase(),
                    onTap: () => {},
                  ),
                  const SizedBox(width: 12),
                  WButton(
                    borderRadius: 8,
                    // color: AppColors.c_e0,
                    verticalPadding: 12,
                    horizontalPadding: 24,
                    textColor: AppColors.c_a1,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    buttonPositionType: MainAxisAlignment.center,
                    text: "cancel".toUpperCase(),
                    onTap: () => {Navigator.pop(context)},
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const WText(
                text: "No courses unlock at this level.",
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
              const SizedBox(height: 24),
              const WText(
                text:
                    "You can unlock courses for members at different levels from the course settings menu.",
                fontSize: 14,
                color: AppColors.c_07,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
