import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:resume_app/routes/app_routes.dart';

class Splash_Page extends StatelessWidget {
  const Splash_Page({super.key});

  @override
  Widget build(BuildContext context) {

    Future.delayed(
      const Duration(seconds: 3),
          () {
        Navigator.of(context).pushReplacementNamed(Allroutes.homepage);
      },
    );

    // Timer.periodic(
    //     Duration(seconds: 5),
    //     (timer) {
    //       Navigator.of(context).pushReplacementNamed(Allroutes.homepage);
    //      timer.cancel();
    //     }
    // );

    return const Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(88),
        child: Center(
          child: kIsWeb
          ? Image(image: NetworkImage('lib/assets/icons/gif/start_screen.gif'),)
          : Image(image: AssetImage('lib/assets/icons/gif/start_screen.gif'),),
        ),
      ),
    );
  }
}
