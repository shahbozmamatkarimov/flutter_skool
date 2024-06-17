import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skool/core/resources/app_colors.dart';
import 'package:skool/core/widgets/w_button.dart';
import 'package:skool/core/widgets/w_text.dart';
import 'package:skool/core/widgets/w_textfield.dart';

@RoutePage()
class InviteScreen extends StatefulWidget {
  const InviteScreen({super.key});

  @override
  State<InviteScreen> createState() => InviteScreenState();
}

class InviteScreenState extends State<InviteScreen> {
  final TextEditingController textController = TextEditingController();

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
            text: "Invite",
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
              const WText(
                text: "Share your group link",
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
              const SizedBox(height: 24),
              const WText(
                text:
                    "This will take people to your group’s About page where they can purchase or request membership.",
                color: AppColors.c_07,
                fontSize: 14,
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.c_e0),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Text(
                        "https://www.skool.com/refer?ref=cde862ce8b034a82bba2c588c29f1b09",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: AppColors.c_2a,
                          height: 16 / 16,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  WButton(
                    text: "COPY",
                    horizontalPadding: 24,
                    verticalPadding: 12,
                    color: AppColors.c_bc,
                    borderRadius: 8,
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                    onTap: () => {},
                  )
                ],
              ),
              const SizedBox(height: 24),
              const WText(
                text:
                    "These invite methods will grant instant access without purchasing or requesting membership.",
                color: AppColors.c_07,
                fontSize: 14,
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    child: WTextField(
                      controller: textController,
                      hint: "Email adress",
                      hintFontSize: 12,
                    ),
                  ),
                  const SizedBox(width: 8),
                  WButton(
                    text: "SEND",
                    horizontalPadding: 24,
                    verticalPadding: 12,
                    color: AppColors.c_bc,
                    borderRadius: 8,
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                    onTap: () => {},
                  )
                ],
              ),
              const SizedBox(height: 24),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: "This member will have access to",
                      style: TextStyle(
                        color: AppColors.c_07,
                        fontSize: 14,
                      ),
                    ),
                    TextSpan(
                      text: " (5/6 courses).",
                      style: TextStyle(
                        color: AppColors.c_2a,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.c_d9,
                    ),
                    child: SvgPicture.asset("assets/svg/invite/csv.svg"),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const WText(
                        text: "Import .CSV file",
                        fontWeight: FontWeight.w600,
                      ),
                      const SizedBox(height: 12),
                      const WText(
                        text:
                            "Invite members in bulk by uploading a .CSV file of email addresses.",
                        fontSize: 12,
                      ),
                      const SizedBox(height: 12),
                      WButton(
                        text: "IMPORT",
                        horizontalPadding: 24,
                        verticalPadding: 12,
                        buttonType: ButtonType.outline,
                        color: AppColors.c_bc,
                        borderRadius: 8,
                        textStyle: const TextStyle(
                            fontSize: 14, color: AppColors.c_2a),
                        onTap: () => {},
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(height: 24),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.c_d9,
                    ),
                    child: SvgPicture.asset("assets/svg/invite/zapier.svg"),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const WText(
                        text: "Zapier integration",
                        fontWeight: FontWeight.w600,
                      ),
                      const SizedBox(height: 12),
                      const WText(
                        text:
                            "Invite members by connecting Skool to over 500 tools using Zapier.",
                        fontSize: 12,
                      ),
                      const SizedBox(height: 12),
                      WButton(
                        text: "INTEGRATE",
                        horizontalPadding: 24,
                        verticalPadding: 12,
                        buttonType: ButtonType.outline,
                        color: AppColors.c_bc,
                        borderRadius: 8,
                        textStyle: const TextStyle(
                            fontSize: 14, color: AppColors.c_2a),
                        onTap: () => {},
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
