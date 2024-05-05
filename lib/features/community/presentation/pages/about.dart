import 'package:flutter/material.dart';

class About extends StatelessWidget {
  About({super.key});

  final List<String> data = [];

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Center(child: Text("About")),
    );
  }
}
