import 'package:flutter/material.dart';

class Technical_Skills_Page extends StatefulWidget {
  const Technical_Skills_Page({super.key});

  @override
  State<Technical_Skills_Page> createState() => _Technical_Skills_PageState();
}

class _Technical_Skills_PageState extends State<Technical_Skills_Page> {
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
          icon: const Icon(Icons.arrow_back_rounded,color: Colors.white,),
        ),
        automaticallyImplyLeading: false,
        title:  const Center(
          child: Text("Technical Skills",
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
