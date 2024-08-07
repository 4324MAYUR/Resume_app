import 'package:flutter/material.dart';

class Achievements_Page extends StatefulWidget {
  const Achievements_Page({super.key});

  @override
  State<Achievements_Page> createState() => _Achievements_PageState();
}

class _Achievements_PageState extends State<Achievements_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.popAndPushNamed(context, 'Build_option_page');
          },
          icon: const Icon(Icons.arrow_back_rounded,
          color: Colors.white,
          ),
        ),
        automaticallyImplyLeading: false,
        title:  const Center(
          child: Text("Achievements",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
        ),
      ),
    );
  }
}
