import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:onaccess/Splash/splash.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Color.fromRGBO(57, 49, 153, 1),
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light
    ));


    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Splash()
    );
  }

}
