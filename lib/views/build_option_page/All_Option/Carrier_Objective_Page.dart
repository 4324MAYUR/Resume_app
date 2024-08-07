import 'package:flutter/material.dart';

class Carrier_Objective_Page extends StatefulWidget {
  const Carrier_Objective_Page({super.key});

  @override
  State<Carrier_Objective_Page> createState() => _Carrier_Objective_PageState();
}

class _Carrier_Objective_PageState extends State<Carrier_Objective_Page> {
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
          child: Text("Carrier Objective",
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
