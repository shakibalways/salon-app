import 'package:flutter/material.dart';
import 'package:salon/Screen/Pages/next_page.dart';

import 'package:salon/Screen/Pages/welcome_page.dart';


void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NextPage(),
    );
  }
}
