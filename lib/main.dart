import 'package:codehouse_tugas3/loginpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Map<int, Color> colorCodes = {
      50: const Color.fromRGBO(95, 111, 140, .1),
      100: const Color.fromRGBO(95, 111, 140, .2),
      200: const Color.fromRGBO(95, 111, 140, .3),
      300: const Color.fromRGBO(95, 111, 140, .4),
      400: const Color.fromRGBO(95, 111, 140, .5),
      500: const Color.fromRGBO(95, 111, 140, .6),
      600: const Color.fromRGBO(95, 111, 140, .7),
      700: const Color.fromRGBO(95, 111, 140, .8),
      800: const Color.fromRGBO(95, 111, 140, .9),
      900: const Color.fromRGBO(95, 111, 140, 1),
    };

    return MaterialApp(
      title: 'Codehouse-UI-Tugas3',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Rubik',
        primarySwatch: MaterialColor(0xff5f6f8c, colorCodes),
      ),
      home: LoginPage(),
    );
  }
}
