import 'package:flutter/material.dart';

class Build_option_page extends StatefulWidget {
  const Build_option_page({super.key});

  @override
  State<Build_option_page> createState() => _Build_option_pageState();
}

class _Build_option_pageState extends State<Build_option_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Build Option"),
      ),
    );
  }
}
