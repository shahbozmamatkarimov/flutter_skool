import 'package:flutter/material.dart';

class LeaderBoards extends StatelessWidget {
  LeaderBoards({super.key});

  final List<String> data = [];

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Center(child: Text("LeaderBoards")),
    );
  }
}
