import 'package:flutter/material.dart';
import 'package:salon/utilits/constant/color_code_list.dart';
import 'package:salon/utilits/constant/image_list.dart';
import 'package:salon/utilits/constant/text_list.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                RImages.loginScreenimage,
                fit: BoxFit.cover,
              )),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RichText(
                    text: TextSpan(
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                        children: <TextSpan>[
                      const TextSpan(text: RTexts.titleText),
                      TextSpan(
                        text: RTexts.titleText1,
                        style: TextStyle(
                          color: Color(
                            int.parse(RColors.colorCode),
                          ),
                        ),
                      ),
                    ])),
                const Text(
                  RTexts.welcomeText,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 30,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 1),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor:
                                Color(int.parse(RColors.colorCode)),
                          ),
                        );
                      }),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
