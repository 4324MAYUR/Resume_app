import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:resume_app/routes/app_routes.dart';

class screen_page extends StatelessWidget {
  const screen_page({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 3),
          () {
        Navigator.of(context).pushReplacementNamed(Allroutes.homepage);
      },
    );
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Center(
          child: kIsWeb
          ? Image(image: NetworkImage('https://storyset.com/illustration/profiling/amico#default&hide=Boxes&hide=complete'),)
          : Image(image: AssetImage('lib/assets/icons/gif/start_screen.gif'),),
        ),
      ),
    );
  }
}
