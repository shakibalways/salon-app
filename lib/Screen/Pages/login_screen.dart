import 'package:flutter/material.dart';
import 'package:salon/utilits/constant/color_code_list.dart';

import '../../utilits/constant/image_list.dart';
import '../../utilits/constant/text_list.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width:  double.infinity,
            child: Image.asset(

              RImages.loginScreenimage,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RichText(
                  text: TextSpan(
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 40),
                      children: <TextSpan>[
                    const TextSpan(
                        text: RTexts.titleText,
                      ),
                    TextSpan(
                        text: RTexts.titleText1,
                        style: TextStyle(
                            color: Color(int.parse(RColors.colorCode)))),
                  ])),
              const Text(RTexts.discreeption,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold)),
              Column(
                children: [
                  TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          backgroundColor: Color(int.parse(RColors.colorCode))),
                      child: const SizedBox(
                          width: 400,
                          height: 50,
                          child: Center(
                              child: Text(
                            RTexts.buttonText,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )))),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(RTexts.haveAccount,style: TextStyle(color: Colors.white),),
                      Text(
                        RTexts.signUpText,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Color(
                              int.parse(RColors.colorCode),
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
