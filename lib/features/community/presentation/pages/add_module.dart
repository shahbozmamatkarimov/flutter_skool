import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skool/core/resources/app_colors.dart';
import 'package:skool/core/widgets/w_button.dart';
import 'package:skool/core/widgets/w_textfield.dart';

class AddModule extends StatelessWidget {
  AddModule({super.key});

  final List<String> postIcons = ["link", "gif"];

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
