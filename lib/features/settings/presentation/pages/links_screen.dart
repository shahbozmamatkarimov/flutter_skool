import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skool/core/resources/app_colors.dart';
import 'package:skool/core/widgets/w_button.dart';
import 'package:skool/core/widgets/w_text.dart';
import 'package:skool/features/settings/presentation/pages/add_link.dart';

@RoutePage()
class LinksScreen extends StatefulWidget {
  const LinksScreen({super.key});

  @override
  State<LinksScreen> createState() => LinksScreenState();
}

class LinksScreenState extends State<LinksScreen> {
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
            text: "Links",
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
          margin: const EdgeInsets.only(top: 16),
          padding: const EdgeInsets.all(20),
          constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height - 76),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const WText(
                text: "Links",
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
              const SizedBox(height: 24),
              const WText(
                text:
                    "Share important resources with your members by adding links.",
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: AppColors.c_07,
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: WButton(
                  borderRadius: 8,
                  color: AppColors.c_bc,
                  verticalPadding: 8,
                  horizontalPadding: 24,
                  textColor: AppColors.c_07,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  text: "add link".toUpperCase(),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AddLink(),
                      ),
                    ),
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
