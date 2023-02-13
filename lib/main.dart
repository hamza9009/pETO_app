import 'package:flutter/material.dart';
import 'components/signin.dart';
import 'components/PhoneList.dart';
// import 'package:hexcolor/hexcolor.dart';
import 'components/appbar.dart';
import 'components/bottombar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {"/":(context) => const SignIn(),
        "/list":(context) => const PhoneList(),},
      debugShowCheckedModeBanner: false,
      title: 'Peto app',
      // home:  const SignIn(),
    );
  }
}
//
// class PetoApp extends StatelessWidget {
//   const PetoApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//     );


