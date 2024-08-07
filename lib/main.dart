import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resume_app/routes/app_routes.dart';
void main()
{
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.black,
    ),
  );

  SystemChrome.setPreferredOrientations(
    [ DeviceOrientation.portraitUp,
    ]
  );
  runApp(
    const Myapp(),
  );
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Allroutes.screen_page,
      routes: Allroutes.routes,
    );
  }
}
