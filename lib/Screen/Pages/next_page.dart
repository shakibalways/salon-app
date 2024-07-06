import 'package:flutter/material.dart';
import 'package:salon/Common/Widget/custom_textfield.dart';
import 'package:salon/utilits/constant/color_code_list.dart';
import 'package:salon/utilits/constant/image_list.dart';
import 'package:salon/utilits/constant/text_list.dart';

class NextPage extends StatelessWidget {
  const NextPage({super.key});

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
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 20,
                    foregroundColor: Colors.white,
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black87,
                      size: 40,
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  RichText(
                      text: TextSpan(
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                          children: [
                        const TextSpan(text: RTexts.titleText),
                        TextSpan(
                            text: RTexts.titleText1,
                            style: TextStyle(
                                color: Color(int.parse(RColors.colorCode)))),
                      ])),
                ],
              ),
            ),
             const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  RTexts.firstName,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18),
                ),
                CustomTextField(hintText: RTexts.hintText),
                SizedBox(
                  height: 20,
                ),
                Text(
                  RTexts.mail,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18),
                ),
                CustomTextField(hintText: RTexts.gmail),
                SizedBox(
                  height: 20,
                ),
                Text(
                  RTexts.pass,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18),
                ),
                CustomTextField(hintText: RTexts.pass),
                SizedBox(
                  height: 20,
                ),
                Text(
                  RTexts.confirm,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18),
                ),
                CustomTextField(hintText: RTexts.confirm1),
              ],
            ),
            SizedBox(
              width: 375,
              height: 65,
              child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                        Color(int.parse(RColors.colorCode)))),
                child: const Text(
                  "Next",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            )
          ],
        )
      ],
    ));
  }
}
