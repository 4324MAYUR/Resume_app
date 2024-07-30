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
        backgroundColor: Colors.blue,
        leading: IconButton(
          onPressed: () {
            Navigator.popAndPushNamed(context, 'Home_Page');
          },
          icon: const Icon(Icons.arrow_back_rounded),
        ),
        automaticallyImplyLeading: false,
        title:  const Center(
          child: Text("Build Option",
            style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
          ),
        ),
      ),
    );
  }
}
