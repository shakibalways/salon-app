import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerCustom extends StatelessWidget {
  final String title;
  final String imagePath;
  const ContainerCustom({super.key,required this.title,required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 420,
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(0, 7),
        )],
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
              color: Colors.black, width: 0.3)),
      child: Row(
        children: [
          Image.asset(
          imagePath,
            height: 85,
          ),
          Column(
            mainAxisAlignment:
            MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
             title,
                style: TextStyle(
                    color: Colors.blue[900],
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                  'Our grocery app offers fresh \nbulbs, peeled cloves.')
            ],
          ),
          Column(
            mainAxisAlignment:
            MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Text(
                    '-',
                    style: TextStyle(
                        color: Color(0xff370C92),
                        fontSize: 30),
                  ),
                  Text(
                    '1',
                    style: TextStyle(
                      color: Color(0xff370C92),
                    ),
                  ),
                  Icon(
                    Icons.add,
                    color: Color(0xff370C92),
                  ),
                ],
              ),
              Text(
                '10.5/1Kg',
                style:
                TextStyle(color: Color(0xff26970A)),
              )
            ],
          )
        ],
      ),
    );
  }
}
