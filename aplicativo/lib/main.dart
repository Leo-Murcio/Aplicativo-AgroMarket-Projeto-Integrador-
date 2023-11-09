import 'package:aplicativo/screens/infos/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:aplicativo/screens/infos/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplicativo AgroMarket',
      home: Home(),
    );
  }
}
