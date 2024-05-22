import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

@RoutePage()
class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});

  final List<String> data = [];
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: PreferredSize(
    //     preferredSize:
    //         const Size.fromHeight(92.0), // Set your preferred height here
    //     child: AppBar(
    //       titleSpacing: 0,
    //       backgroundColor: AppColors.c_bc,
    //       centerTitle: true,
    //       automaticallyImplyLeading: false,
    //       elevation: 0,
    //       clipBehavior: Clip.none,
    //       title: Container(
    //         margin: const EdgeInsets.only(top: 30, left: 20, right: 20),
    //         height: 48,
    //         decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
    //         clipBehavior: Clip.hardEdge,
    //         child: WTextField(
    //           controller: searchController,
    //           hint: "Search",
    //           hintFontSize: 16,
    //           fillColor: AppColors.white,
    //           borderColor: AppColors.white,
    //           contentPadding:
    //               const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
    //           prefixIcon: Padding(
    //             padding:
    //                 const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
    //             child: SvgPicture.asset(
    //               "assets/svg/icon/search.svg",
    //               width: 20,
    //             ),
    //           ),
    //         ),
    //       ),
    //     ),
    //   ),
    return SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
        child: const Column(
          children: [Text("hdshdjsd")],
        ),
      ),
    );
  }
}
