import 'package:flutter/material.dart';

class Hobbies_Page extends StatefulWidget {
  const Hobbies_Page({super.key});

  @override
  State<Hobbies_Page> createState() => _Hobbies_PageState();
}

class _Hobbies_PageState extends State<Hobbies_Page> {
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
          child: Text("Hobbies",
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
