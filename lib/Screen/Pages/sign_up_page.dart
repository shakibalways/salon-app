import 'package:flutter/material.dart';
import 'package:salon/Common/Widget/custom_textfield.dart';
import 'package:salon/utilits/constant/image_list.dart';

import '../../utilits/constant/color_code_list.dart';
import '../../utilits/constant/text_list.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
                  CircleAvatar(
                    radius: 20,
                    foregroundColor: Colors.white,
                    child: Icon(
                      Icons.arrow_back_rounded,
                      color: Colors.black87,
                      size: 35,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  RichText(
                      text: TextSpan(
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                          children: [
                        TextSpan(text: RTexts.titleText),
                        TextSpan(
                            text: RTexts.titleText1,
                            style: TextStyle(
                                color: Color(int.parse(RColors.colorCode)))),
                      ])),
                ],
              ),
            ),
            Image.asset(RImages.signupImage),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 20
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    RTexts.address,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  CustomTextField(hintText: ""),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    RTexts.number,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  CustomTextField(hintText: ""),
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(
                  width: 375,
                  height: 65,
                  child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color(int.parse(RColors.colorCode)))),
                    child: Text(
                      RTexts.buttonName,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    RTexts.skip,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold,fontSize: 18),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    ));
  }
}
