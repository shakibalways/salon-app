import 'package:flutter/material.dart';
import 'package:salon/Screen/Home%20Page/home_screen.dart';
import 'package:salon/view/auth/item_selection_page.dart';





void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreenPage(),
    );
  }
}
