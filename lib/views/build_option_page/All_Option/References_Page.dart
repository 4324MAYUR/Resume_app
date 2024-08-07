import 'package:flutter/material.dart';

class References_Page extends StatefulWidget {
  const References_Page({super.key});

  @override
  State<References_Page> createState() => _References_PageState();
}

class _References_PageState extends State<References_Page> {
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
          child: Text("References",
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
