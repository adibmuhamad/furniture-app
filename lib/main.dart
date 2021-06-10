import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:furniture_app/pages/home_page.dart';
import 'package:furniture_app/theme.dart';
import 'package:splashscreen/splashscreen.dart';

Future<void> main() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: backgroundColor,
    statusBarBrightness: Brightness.light,
    statusBarIconBrightness:Brightness.light,
  ));

  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new SplashScreen(
        seconds: 5,
        navigateAfterSeconds: new HomePage(),
        title: new Text(
          'Dream Home',
          style: whiteBoldTextStyle.copyWith(
            fontSize: 30,
          ),
        ),
        image: new Image.asset(
            'assets/images/ar.png',
            height: 80,
            fit: BoxFit.cover,
        ),
        backgroundColor: backgroundColor,
        loaderColor: accentColor,
      )
    );
  }
}
