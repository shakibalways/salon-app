import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:salon/data%20model/categores_list.dart';
import 'package:salon/data%20model/product_list.dart';

import 'package:salon/utilits/constant/image_list.dart';
import 'package:salon/utilits/constant/text_list.dart';

class ItemSelectionPage extends StatefulWidget {
  ItemSelectionPage({super.key});

  @override
  State<ItemSelectionPage> createState() => _ItemSelectionPageState();
}

class _ItemSelectionPageState extends State<ItemSelectionPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Stack(clipBehavior: Clip.none, children: [
      Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset(
              RImages.back,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      Positioned(
        top: 310,
        child: Container(
          height: height * 0.80,
          width: width * 1,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60), topRight: Radius.circular(60))),
          child: SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      RTexts.t,
                      style: TextStyle(
                          color: Colors.blue[900],
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    Row(
                      children: [
                        Text(
                          '-',
                          style: TextStyle(fontSize: 40),
                        ),
                        Text(
                          '1',
                          style: TextStyle(fontSize: 20),
                        ),
                        Icon(Icons.add),
                      ],
                    )
                  ],
                ),
                Text(RTexts.v),
                Row(
                  children: [
                    Icon(Icons.location_on_outlined),
                    Text("2.7 km"),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow[600],
                        ),
                        Text('4.5'),
                      ],
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Discreption'),
                    Text('basically any variety available in \na grocery store')
                  ],
                ),
                Image.asset(RImages.line),
                Text('Other Item'),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: productSerial.length,
                    physics: ScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                          height: 100,
                          width: 300,
                          decoration: BoxDecoration(
                              // boxShadow: [BoxShadow(
                              //   color: Colors.grey.withOpacity(0.5),
                              //   spreadRadius: 5,
                              //   blurRadius: 7,
                              //   offset: const Offset(0, 3),
                               // )],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border:
                                  Border.all(color: Colors.black, width: 0.3)),
                          child: Row(
                            children: [
                              Image.asset(
                                productSerial[index].imagePath,
                                height: 85,
                              ),
                              SizedBox(width: 20,),
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 40
                                ),
                                child: Text(productSerial[index].productName,style: TextStyle(
                                  color: Colors.blue[900],fontSize: 20,fontWeight: FontWeight.bold
                                ),),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.arrow_back_ios_new),
            Image.asset(RImages.notification)
          ],
        ),
      )
    ]));
  }
}
