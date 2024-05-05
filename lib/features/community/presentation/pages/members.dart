import 'package:flutter/material.dart';

class Members extends StatelessWidget {
  Members({super.key});

  final List<String> data = [];

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Center(child: Text("Members")),
    );
  }
}
