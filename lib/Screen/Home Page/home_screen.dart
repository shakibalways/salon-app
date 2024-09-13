import 'package:flutter/material.dart';
import 'package:salon/data%20model/categores_list.dart';
import 'package:salon/data%20model/product_list.dart';
import 'package:salon/utilits/constant/color_code_list.dart';
import 'package:salon/utilits/constant/image_list.dart';
import 'package:salon/utilits/constant/text_list.dart';



class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({super.key});

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  int changeColor = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(int.parse(RColors.homeColor)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 25, top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                      text: TextSpan(
                          style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 35,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                        const TextSpan(text: RTexts.titleText),
                        TextSpan(
                            text: RTexts.titleText1,
                            style: TextStyle(
                                color: Color(int.parse(RColors.colorCode)))),
                      ])),
                  Image.asset(
                    RImages.notification,
                    height: 30,
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 420,
                height: 50,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(int.parse(RColors.textfleidColor))),
                  child: TextField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        prefix: const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Icon(Icons.search),
                        ),
                        hintText: RTexts.fleidText,
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(),
                            borderRadius: BorderRadius.circular(25))),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                RTexts.categori,
                style: TextStyle(
                    color: Color(
                      int.parse(RColors.colorCode),
                    ),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: categorisList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                changeColor = index;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: changeColor == index
                                  ? Colors.grey
                                  : Colors.red,
                            ),
                            child: Row(
                              children: [
                                Image.asset(categorisList[index].imagePath),
                                Text(categorisList[index].categoriName)
                              ],
                            )),
                      );
                    }),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                RTexts.body,
                style: TextStyle(
                    color: Color(int.parse(RColors.colorCode)),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.asset(RImages.productPercent),
                    Image.asset(RImages.saveUp),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                RTexts.selling,
                style: TextStyle(
                    color: Color(0xFF370C92),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 40,
                      crossAxisSpacing: 20),
                  itemCount: productSerial.length,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration:
                          BoxDecoration(color: Colors.white, boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        )
                      ]),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            bottom: 60,
                            left: 35,
                            child: Column(
                              children: [
                                Image.asset(productSerial[index].imagePath),
                                Text(
                                  productSerial[index].productName,
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Row(
                                  children: [
                                    Text("22 min"),
                                    CircleAvatar(
                                      radius: 5,
                                      backgroundColor: Colors.grey,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                        ),
                                        Text("4.7"),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
