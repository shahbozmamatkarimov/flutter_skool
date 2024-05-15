import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skool/core/resources/app_colors.dart';
import 'package:skool/core/widgets/w_button.dart';
import 'package:skool/core/widgets/w_textfield.dart';

class Comments extends StatelessWidget {
  Comments({super.key});

  final List<String> postIcons = ["link", "gif"];

  final TextEditingController commentController = TextEditingController();

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
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        height: 64,
        child: Row(
          children: [
            const CircleAvatar(
              radius: 20, // Set the radius of the circle
              backgroundImage: NetworkImage(
                'https://picsum.photos/250?image=9',
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Container(
                clipBehavior: Clip.hardEdge,
                decoration: const BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 40,
                        child: WTextField(
                          controller: commentController,
                          borderColor: AppColors.white,
                          hint: "Your comment",
                        ),
                      ),
                    ),
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
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 20),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: AppColors.white, borderRadius: BorderRadius.circular(16)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      CircleAvatar(
                        radius: 20, // Set the radius of the circle
                        backgroundImage: NetworkImage(
                          'https://picsum.photos/250?image=9',
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Cameron Williamson",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          Row(
                            children: [
                              Text(
                                "19d ago in",
                                style: TextStyle(fontSize: 12),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                "Announcements",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Color(0xFF59ACFF)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  WButton(
                    buttonType: ButtonType.outline,
                    color: AppColors.c_bc,
                    textColor: AppColors.c_2a,
                    borderRadius: 8,
                    fontSize: 14,
                    verticalPadding: 8,
                    horizontalPadding: 8,
                    onTap: () => {},
                    text: "",
                    child: SvgPicture.asset("assets/svg/icon/threedot.svg"),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                'Introducing "The Skool Games"',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
              const SizedBox(
                height: 24,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: const Text(
                  "There's two sides to building a business online: Tools and Training on how to use those tools.The problem with training is opinions. There are so many opinions, they contradict each-other, and it's hard to know what to do. If only there was a way to see what's working now in realtime...Introducing The Skool Games — a fun way to build your own business with other people — where the training comes from the winners fresh every month.Here's how it works: Skool group owners that want to play can join",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 15,
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              WButton(
                textColor: AppColors.c_2a,
                fontSize: 14,
                verticalPadding: 0,
                horizontalPadding: 0,
                text: "See more",
                onTap: () => {},
              ),
              const SizedBox(
                height: 24,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.network(
                  'https://picsum.photos/250?image=9',
                  height: 120,
                  width: 120,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  WButton(
                    buttonType: ButtonType.outline,
                    color: AppColors.c_f0,
                    horizontalPadding: 6,
                    verticalPadding: 6,
                    onTap: () => {},
                    text: "",
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset("assets/svg/icon/like.svg"),
                        const SizedBox(width: 4),
                        const Text(
                          'Like',
                          style: TextStyle(fontSize: 14, color: AppColors.c_59),
                        ),
                        const SizedBox(width: 4),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          decoration: const BoxDecoration(
                              border: Border(
                                  left: BorderSide(color: AppColors.c_f0))),
                          child: const Text(
                            '355',
                            style:
                                TextStyle(fontSize: 14, color: AppColors.c_59),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  WButton(
                    color: AppColors.white,
                    horizontalPadding: 0,
                    verticalPadding: 0,
                    onTap: () => {},
                    text: "",
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset("assets/svg/icon/message.svg"),
                        const SizedBox(width: 4),
                        const Text(
                          '29 comments',
                          style: TextStyle(fontSize: 14, color: AppColors.c_59),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              // comments
              for (int i in [1, 2, 3, 4])
                SizedBox(
                  child: Column(
                    children: [
                      if (i % 2 == 1)
                        Transform.translate(
                          offset: Offset(-20, 0),
                          child: const Divider(
                            color: AppColors.c_f0,
                          ),
                        ),
                      SizedBox(height: i % 2 == 0 ? 0 : 16),
                      Padding(
                        padding: EdgeInsets.only(left: i % 2 == 0 ? 16 : 0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: i % 2 == 0
                                  ? 12
                                  : 20, // Set the radius of the circle
                              backgroundImage: const NetworkImage(
                                'https://picsum.photos/250?image=9',
                              ),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Cameron Williamson",
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                                SizedBox(height: 2),
                                Text(
                                  "19d ago",
                                  style: TextStyle(
                                      fontSize: 12, color: AppColors.c_a1),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 56, top: 12, bottom: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Nice🔥🔥",
                              style: TextStyle(fontSize: 14),
                            ),
                            const SizedBox(height: 12),
                            Row(
                              children: [
                                WButton(
                                  color: AppColors.white,
                                  horizontalPadding: 0,
                                  verticalPadding: 0,
                                  onTap: () => {},
                                  text: "",
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SvgPicture.asset(
                                        "assets/svg/icon/like.svg",
                                        color: AppColors.c_a1,
                                      ),
                                      const SizedBox(width: 4),
                                      const Text(
                                        '14',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: AppColors.c_a1),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 12),
                                WButton(
                                  horizontalPadding: 0,
                                  verticalPadding: 0,
                                  textColor: AppColors.c_a1,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  onTap: () => {},
                                  text: "Reply",
                                ),
                              ],
                            )
                          ],
                        ),
                      ), // main comment end
                    ],
                  ),
                ), // inline comments end
            ],
          ),
        ),
      ),
    );
  }
}
