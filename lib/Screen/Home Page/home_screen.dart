import 'package:flutter/material.dart';
import 'package:salon/utilits/constant/color_code_list.dart';
import 'package:salon/utilits/constant/image_list.dart';

import '../../Data/categores_list.dart';
import '../../utilits/constant/text_list.dart';

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({super.key});

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(int.parse(RColors.homeColor)),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
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
          Text(
            RTexts.categori,
            style: TextStyle(
                color: Color(
                  int.parse(RColors.colorCode),
                ),
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: SizedBox(
              height: 50,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: categorisList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: ElevatedButton(
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.cyan)),
                          onPressed: () {},
                          child: Row(
                            children: [
                              Image.asset(categorisList[index].imagePath),
                              Text(categorisList[index].categoriName)
                            ],
                          )),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
