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
          statusBarColor: Colors.red),
    );
    super.dispose();
  }
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
      body: Column(
        children: Allroutes.AllOption.map(
          (e) => ListTile(
            leading: Image.asset(e['icon'],
            height: 44,
            ),
            title: Text(e['title']),
            trailing: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(e['route']);
              },
              icon: const Icon(Icons.add),
            ),
          ),
        ).toList(),
      ),
    );
  }
}
