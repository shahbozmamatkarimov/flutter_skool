import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skool/core/resources/app_colors.dart';
import 'package:skool/core/widgets/w_user_avatar.dart';

class Votes extends StatelessWidget {
  const Votes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            const Size.fromHeight(60.0), // Set your preferred height here
        child: AppBar(
          backgroundColor: const Color(0xFFFFFFFF),
          title: const Text(
            "Votes (61)",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
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
          margin: const EdgeInsets.only(top: 16),
          constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height - 76),
          padding: const EdgeInsets.all(20),
          color: AppColors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              9,
              (index) => const Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Row(
                  children: [
                    WUserAvatar(
                      userStep: 1,
                      userAvatar: 'https://picsum.photos/250?image=9',
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ralph Edwards",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 2),
                        Text(
                          "Marketer",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
