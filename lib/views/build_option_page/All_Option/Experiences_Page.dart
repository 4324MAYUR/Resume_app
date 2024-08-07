import 'package:flutter/material.dart';

class Experiences_Page extends StatefulWidget {
  const Experiences_Page({super.key});

  @override
  State<Experiences_Page> createState() => _Experiences_PageState();
}

class _Experiences_PageState extends State<Experiences_Page> {
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
          child: Text("Experiences",
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
