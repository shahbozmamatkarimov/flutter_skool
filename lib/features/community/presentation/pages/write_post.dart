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
              const SizedBox(height: 12),
              Row(
                children: [
                  for (String icon in postIcons)
                    WButton(
                      text: "",
                      horizontalPadding: 12,
                      verticalPadding: 12,
                      onTap: () => {},
                      child: SvgPicture.asset(
                        "assets/svg/post/$icon.svg",
                        width: 14,
                        height: 14,
                      ),
                    ),
                  const BottomSheetExample(),
                ],
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: double.infinity,
                child: WButton(
                  text: "POST",
                  color: AppColors.c_e0,
                  textColor: AppColors.c_a1,
                  borderRadius: 8,
                  horizontalPadding: 12,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  verticalPadding: 12,
                  onTap: () => {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BottomSheetExample extends StatelessWidget {
  const BottomSheetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: WButton(
        borderRadius: 4,
        verticalPadding: 4,
        horizontalPadding: 4,
        text: "",
        onTap: () => {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(16))),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Select category",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: AppColors.c_07,
                            ),
                          ),
                          WButton(
                            borderRadius: 4,
                            text: "",
                            onTap: () => Navigator.pop(context),
                            child:
                                SvgPicture.asset("assets/svg/icon/close.svg"),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: WButton(
                          borderRadius: 4,
                          verticalPadding: 16,
                          horizontalPadding: 0,
                          buttonPositionType: MainAxisAlignment.start,
                          text: "",
                          onTap: () => Navigator.pop(context),
                          child: Row(
                            children: [
                              SvgPicture.asset("assets/svg/modal/discover.svg"),
                              const SizedBox(
                                width: 12,
                              ),
                              const Text(
                                "Discover communities",
                                style: TextStyle(
                                    color: Color(0xFF070707),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: double.infinity,
                        child: WButton(
                          text: "POST",
                          color: AppColors.c_bc,
                          textColor: AppColors.c_07,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          borderRadius: 8,
                          horizontalPadding: 12,
                          verticalPadding: 12,
                          onTap: () => {},
                        ),
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: double.infinity,
                        child: WButton(
                          text: "CANCEL",
                          textColor: AppColors.c_a1,
                          borderRadius: 8,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          horizontalPadding: 12,
                          verticalPadding: 12,
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
        child: SizedBox(
          height: 28,
          child: Row(
            children: [
              const Text(
                "Select category",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.c_a1,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              SvgPicture.asset(
                "assets/svg/icon/arrow.svg",
                color: AppColors.c_a1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
