import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skool/core/resources/app_colors.dart';
import 'package:skool/core/widgets/w_button.dart';
import 'package:skool/core/widgets/w_text.dart';
import 'package:skool/core/widgets/w_textfield.dart';

@RoutePage()
class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScrenenState();
}

class _PasswordScrenenState extends State<PasswordScreen> {
  final TextEditingController lastnameController = TextEditingController();
  
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
            text: "Password",
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: AppColors.white,
              margin: EdgeInsets.only(top: 16),
              padding: const EdgeInsets.all(20),
              constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height - 76),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const WText(
                    text: "Change password",
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                  const SizedBox(height: 24),
                  WTextField(
                    controller: lastnameController,
                    borderColor: AppColors.c_e0,
                    hint: "Old password",
                    textStyle: const TextStyle(color: AppColors.c_a1),
                    hintFontSize: 14,
                  ),
                  const SizedBox(height: 24),
                  WTextField(
                    controller: lastnameController,
                    borderColor: AppColors.c_e0,
                    hint: "New password",
                    textStyle: const TextStyle(color: AppColors.c_a1),
                    hintFontSize: 14,
                  ),
                  const SizedBox(height: 24),
                  WTextField(
                    controller: lastnameController,
                    borderColor: AppColors.c_e0,
                    hint: "Confirm new password",
                    textStyle: const TextStyle(color: AppColors.c_a1),
                    hintFontSize: 14,
                  ),
                  const SizedBox(height: 24),
                  Container(
                    constraints: BoxConstraints(
                      minHeight: MediaQuery.of(context).size.height > 420
                          ? MediaQuery.of(context).size.height - 420
                          : 0,
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: WButton(
                      borderRadius: 8,
                      color: AppColors.c_e0,
                      verticalPadding: 12,
                      horizontalPadding: 24,
                      textColor: AppColors.c_a1,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      text: "change password".toUpperCase(),
                      onTap: () => {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
