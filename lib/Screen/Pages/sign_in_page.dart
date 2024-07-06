import 'package:flutter/material.dart';
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                  text: TextSpan(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      children: <TextSpan>[
                    TextSpan(text: RTexts.titleText),
                    TextSpan(
                        text: RTexts.titleText1,
                        style: TextStyle(
                            color: Color(int.parse(RColors.colorCode)))),
                  ]))
            ],
          )
        ],
      ),
    );
  }
}
