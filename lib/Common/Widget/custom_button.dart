import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  const CustomButton({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
   margin: EdgeInsets.only(
     top: 500, left: 20
   ),
      width: 410,
      decoration: BoxDecoration(
        color: Color(0xff370C92),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 16
          ),
          child: Text(title,style: TextStyle(color: Colors.white,fontSize:20,
          fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}
