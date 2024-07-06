import 'package:flutter/material.dart';
import 'package:salon/Screen/Pages/sign_in_page.dart';

import 'Screen/Pages/login_screen.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInPage(),
    );
  }
}
