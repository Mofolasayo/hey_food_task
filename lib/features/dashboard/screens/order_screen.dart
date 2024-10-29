import 'package:flutter/material.dart';
import 'package:hey_food/common/components/app_colors.dart';
import 'package:hey_food/common/components/app_dimensions.dart';
import 'package:hey_food/common/components/app_button.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Center(
            child: Text(
              "Orders",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
            ),
          ),
          leadingWidth: 120,
          actions: [
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 13, vertical: 8)),
              onPressed: () {},
              child: const Row(
                children: [
                  Icon(Icons.history),
                  SizedBox(
                    width: 5,
                  ),
                  Text("Order history"),
                ],
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
                height: 35,
                width: 50,
                decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: const Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.white,
                )),
            const SizedBox(
              width: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Icon(Icons.person_2_outlined),
            )
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: AppDimensions.deviceHeight(context) * 0.1,
            ),
            Image.asset("assets/images/delivery.jpeg"),
            SizedBox(
              height: AppDimensions.deviceHeight(context) * 0.4,
              child: Column(
                children: [
                  const Text(
                    "No ongoing orders",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "You'll be able to see your ongoing orders here",
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  AppButton(
                    text: "Place an order",
                    onPressed: () {},
                    borderRadius: 20,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
