import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:salon/Common/Widget/custom_button.dart';

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
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.arrow_back_ios_new),
                Image.asset(RImages.notification)
              ],
            ),
          ),
        ],
      ),
     Positioned(
       top: 310,
       child: Stack(
         children:[
           Container(
             height: height * 0.80,
             width: width * 1,
             decoration: const BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.only(
                     topLeft: Radius.circular(60), topRight: Radius.circular(60))),
             child: SingleChildScrollView(
               physics: const ScrollPhysics(),
               child: Padding(
                 padding: const EdgeInsets.all(15),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text(
                           RTexts.t,
                           style: TextStyle(
                               color: Colors.blue[900],
                               fontWeight: FontWeight.bold,
                               fontSize: 30),
                         ),
                         const Row(
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
                     const Text(RTexts.v),
                     Row(
                       children: [
                         const Icon(Icons.location_on_outlined),
                         const Text("2.7 km"),
                         const SizedBox(
                           width: 20,
                         ),
                         Icon(
                           Icons.star,
                           color: Colors.yellow[600],
                         ),
                         const Text('4.5')
                       ],
                     ),
                     const SizedBox(
                       height: 15,
                     ),
                     const Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text(
                           'Discreption',
                           style:
                           TextStyle(fontSize: 22, color: Colors.indigoAccent),
                         ),
                         SizedBox(
                           height: 10,
                         ),
                         Text(
                           'basically any variety available in \na grocery store',
                           style: TextStyle(
                               fontWeight: FontWeight.bold, fontSize: 15),
                         )
                       ],
                     ),
                     const SizedBox(
                       height: 20,
                     ),
                     Image.asset(RImages.line),
                     const SizedBox(
                       height: 30,
                     ),
                     const Text(
                       'Other Item',
                       style: TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 20,
                           color: CupertinoColors.activeBlue),
                     ),
                     ListView.builder(
                         padding: const EdgeInsets.only(bottom: 20),
                         shrinkWrap: true,
                         itemCount: productSerial.length,
                         physics: const ScrollPhysics(),
                         itemBuilder: (context, index) {
                           return Padding(
                             padding: const EdgeInsets.all(5),
                             child: Container(
                               height: 120,
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
                                   border: Border.all(
                                       color: Colors.black, width: 0.3)),
                               child: Row(
                                 children: [
                                   Image.asset(
                                     productSerial[index].imagePath,
                                     height: 85,
                                   ),
                                   Column(
                                     mainAxisAlignment:
                                     MainAxisAlignment.spaceEvenly,
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text(
                                         productSerial[index].productName,
                                         style: TextStyle(
                                             color: Colors.blue[900],
                                             fontSize: 20,
                                             fontWeight: FontWeight.bold),
                                       ),
                                       const Text(
                                           'Our grocery app offers fresh \nbulbs, peeled cloves.')
                                     ],
                                   ),
                                   const Column(
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
                             ),
                           );
                         }),
                     const SizedBox(
                       height: 100,
                     )
                   ],
                 ),
               ),
             ),
           ),
           const CustomButton(title: "Add Card")
         ]
       ),
     )
    ]));
  }
}
