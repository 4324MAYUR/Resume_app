import 'package:flutter/material.dart';

class Eduction_Page extends StatefulWidget {
  const Eduction_Page({super.key});

  @override
  State<Eduction_Page> createState() => _Eduction_PageState();
}

class _Eduction_PageState extends State<Eduction_Page> {
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
          child: Text("Education",
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
