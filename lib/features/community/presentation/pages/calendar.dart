import 'package:flutter/material.dart';

class Calendar extends StatelessWidget {
  Calendar({super.key});

  final List<String> data = [];

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Center(child: Text("Calendar")),
    );
  }
}
