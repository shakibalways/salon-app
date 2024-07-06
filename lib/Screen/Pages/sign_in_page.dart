import 'package:flutter/material.dart';
import 'package:salon/Common/Widget/custom_textfield.dart';
import 'package:salon/utilits/constant/color_code_list.dart';
import 'package:salon/utilits/constant/image_list.dart';

import '../../utilits/constant/text_list.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

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
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                            color: Color(int.parse(RColors.colorCode)))),
                  ])),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Email",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18),
                    ),
                    CustomTextField(
                      hintText: "john@gmail.com",
                      labelText: "",
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Text(
                      "Password",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    CustomTextField(
                      hintText: "********",
                      labelText: "",
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 350,
                height: 65,
                child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Color(int.parse(RColors.colorCode)))),
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
