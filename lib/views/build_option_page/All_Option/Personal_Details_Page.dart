import 'package:flutter/material.dart';

class Personal_Details_Page extends StatefulWidget {
  const Personal_Details_Page({super.key});

  @override
  State<Personal_Details_Page> createState() => _Personal_Details_PageState();
}

class _Personal_Details_PageState extends State<Personal_Details_Page> {
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
          child: Text("Personal Details",
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
