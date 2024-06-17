import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skool/core/resources/app_colors.dart';
import 'package:skool/core/widgets/w_text.dart';
import 'package:skool/core/widgets/w_textfield.dart';

@RoutePage()
class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});

  final List<String> data = [];
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c_bc,
      appBar: PreferredSize(
        preferredSize:
            const Size.fromHeight(92.0), // Set your preferred height here
        child: AppBar(
          backgroundColor: AppColors.c_bc,
          flexibleSpace: Container(
            margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
            // height: 48,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
            clipBehavior: Clip.hardEdge,
            child: WTextField(
              controller: searchController,
              hint: "Search",
              hintFontSize: 16,
              borderRadius: 8,
              fillColor: AppColors.white,
              borderColor: AppColors.white,
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
              prefixIcon: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: SvgPicture.asset(
                  "assets/svg/icon/search.svg",
                  width: 20,
                  height: 20,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: AppColors.c_f0,
          borderRadius: BorderRadiusDirectional.vertical(
            top: Radius.circular(20),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/svg/icon/no_results.svg"),
              const SizedBox(height: 16),
              const WText(
                text: "No results",
                fontWeight: FontWeight.w500,
                color: AppColors.c_a1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
