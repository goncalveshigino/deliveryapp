import 'package:flutter/material.dart';

import 'package:deliveryapp/src/utils/my_colors.dart';
import 'src/pages/auth/login/login_page.dart';
import 'src/pages/auth/register/register_page.dart';


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
        'login': (BuildContext context ) => const LoginPage(),
        'register': (BuildContext context) =>  RegisterPage(),
      },
      theme: ThemeData(
        primarySwatch:  Colors.red,
       // fontFamily: 'NimbusSans'
      ),
    );
  }
}