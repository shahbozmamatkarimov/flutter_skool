import 'package:flutter/material.dart';

class Classroom extends StatelessWidget {
  Classroom({super.key});

  final List<String> data = [];

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Center(child: Text("Classroom")),
    );
  }
}
