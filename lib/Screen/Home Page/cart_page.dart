import 'package:flutter/material.dart';
import 'package:salon/Common/Widget/container_custom.dart';
import 'package:salon/utilits/constant/image_list.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.arrow_back_ios_new),
                  Image.asset(RImages.notification),
                ],
              ),
              const SizedBox(height: 50,),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Cart",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20,),
                  ContainerCustom(
                    title: 'Tomato',
                    imagePath: 'assets/ProductImage/Tomato.png',
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ContainerCustom(
                    title: 'Garlic',
                    imagePath: 'assets/ProductImage/Garlic.png',
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ContainerCustom(
                    title: 'Garlic',
                    imagePath: 'assets/ProductImage/Garlic.png',
                  ),
                ],
              )

            ],
          ),
          Container(
            width: 420,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xff370C92),
            ),
            child: const Center(
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Text(
                  "Checkout",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
