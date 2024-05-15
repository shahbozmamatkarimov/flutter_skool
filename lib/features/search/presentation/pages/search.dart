import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skool/core/widgets/w_textfield.dart';

class Search extends StatelessWidget {
  Search({super.key});

  final List<String> data = [];
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          WTextField(
            controller: searchController,
            prefixIcon: SvgPicture.asset("assets/svg/icon/search.svg"),
          )
        ],
      ),
    );
  }
}
