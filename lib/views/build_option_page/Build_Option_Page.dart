import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resume_app/routes/app_routes.dart';
class Build_option_page extends StatefulWidget {
  const Build_option_page({super.key});

  @override
  State<Build_option_page> createState() => _Build_option_pageState();
}

class _Build_option_pageState extends State<Build_option_page> {
  @override
  void dispose()
  {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
          statusBarColor: Colors.black),
    );
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context, 'Home_Page');
          },
          icon: const Icon(Icons.arrow_back_rounded,
          color: Colors.white,
          ),
        ),
        automaticallyImplyLeading: false,
        title:  const Center(
          child: Text("Build Option",
            style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
          ),
        ),
      ),
      body: Column(
        children: Allroutes.AllOption.map(
          (e) => ListTile(
            leading: Image.asset(e['icon'],color: Colors.white,
            height: 30
            ),
            title: Text(e['title'],
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            ),
            trailing: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(e['route']);
              },
              icon: const Icon(Icons.add,
              color: Colors.white,
              ),
            ),
          ),
        ).toList(),
      ),
    );
  }
}
