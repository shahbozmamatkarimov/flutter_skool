import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skool/core/resources/app_colors.dart';

class Votes extends StatelessWidget {
  Votes({super.key});

  final List<String> postIcons = ["link", "gif"];

  final TextEditingController commentController = TextEditingController();

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
              (index) => Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: <Widget>[
                        const CircleAvatar(
                          radius: 20, // Set the radius of the circle
                          backgroundImage: NetworkImage(
                            'https://picsum.photos/250?image=9',
                          ),
                        ),
                        Positioned(
                          bottom: -2,
                          right: -12,
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: <Widget>[
                              SvgPicture.asset("assets/svg/icon/user_step.svg"),
                              const Positioned(
                                left: 0,
                                right: 0,
                                top: 0,
                                child: Center(
                                    child: Text(
                                  "1",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.white,
                                  ),
                                )),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    const Column(
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
