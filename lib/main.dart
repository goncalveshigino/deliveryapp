import 'package:deliveryapp/src/pages/auth/login_page.dart';
import 'package:deliveryapp/src/utils/my_colors.dart';


import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({ Key key }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Delivery',
      initialRoute: 'login',
      routes: {
        'login': (BuildContext context ) => const LoginPage()
      },
      theme: ThemeData(
        primarySwatch:  Colors.red
      ),
    );
  }
}