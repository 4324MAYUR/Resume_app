import 'package:flutter/material.dart';
import 'package:resume_app/globals.dart';

class Declaration_Page extends StatefulWidget {
  const Declaration_Page({super.key});

  @override
  State<Declaration_Page> createState() => _Declaration_PageState();
}

class _Declaration_PageState extends State<Declaration_Page> {
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
          child: Text("Declaration",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Container(
          padding: const EdgeInsets.all(18),
          width: double.infinity,
          color: Colors.white,
          child: Column(
          mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Declaration"),
                  Switch(
                      value: Globals.isVisibility,
                      onChanged: (val)
                      {
                        Globals.isVisibility = val;
                        setState(() {});
                      }
                  ),
                ],
              ),
              Visibility(
                visible: Globals.isVisibility,
                  child: const Text("Show In Declaration"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
