import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skool/core/resources/app_colors.dart';
import 'package:skool/core/widgets/w_button.dart';
import 'package:skool/core/widgets/w_textfield.dart';

class WritePost extends StatelessWidget {
  WritePost({super.key});

  final List<String> postIcons = ["link", "video", "poll", "gif"];

  final TextEditingController textController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            const Size.fromHeight(60.0), // Set your preferred height here
        child: AppBar(
          backgroundColor: const Color(0xFFFFFFFF),
          title: const Text(""),
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
          margin: const EdgeInsets.only(top: 16),
          color: Colors.white,
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const Row(
                children: [
                  CircleAvatar(
                    radius: 12, // Set the radius of the circle
                    backgroundImage: NetworkImage(
                      'https://picsum.photos/250?image=9',
                    ),
                  ),
                  SizedBox(width: 12),
                  Text(
                    "Xayot Sharapov",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(width: 4),
                  Text(
                    "posting in",
                    style: TextStyle(fontSize: 14, color: AppColors.c_a1),
                  ),
                  SizedBox(width: 4),
                  Text(
                    "Skool community",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.c_2a),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              WTextField(
                controller: textController,
                hint: "Title",
                hintFontSize: 12,
                autoFocus: true,
              ),
              const SizedBox(height: 12),
              WTextField(
                contentPadding: const EdgeInsets.all(12),
                controller: descriptionController,
                hint: "Write something...",
                hintFontSize: 12,
                maxLines: 6,
              ),
              Row(
                children: [
                  for (String icon in postIcons)
                    WButton(
                      text: "",
                      // horizontalPadding: 12,
                      // verticalPadding: 12,
                      onTap: () => {},
                      child: SvgPicture.asset(
                        "assets/svg/post/$icon.svg",
                      ),
                    ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
