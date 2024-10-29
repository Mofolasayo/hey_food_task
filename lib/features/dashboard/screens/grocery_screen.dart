import 'package:flutter/material.dart';
import 'package:hey_food/common/components/app_colors.dart';
import 'package:hey_food/common/components/app_dimensions.dart';
import 'package:hey_food/common/components/app_icons.dart';
import 'package:hey_food/common/components/app_search_field.dart';
import 'package:hey_food/common/components/app_textstyles.dart';
import 'package:hey_food/features/dashboard/widgets/inner_icon_tiles.dart';
import 'package:hey_food/features/dashboard/widgets/list_tiles.dart';

class GroceryScreen extends StatelessWidget {
  const GroceryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        leading: const Center(
          child: Text(
            "Grocery",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
          ),
        ),
        leadingWidth: 150,
        actions: [
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
              ),
              height: AppDimensions.deviceHeight(context) * 0.23,
              width: AppDimensions.deviceWidth(context),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    const AppSearchField(),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InnerIconTiles(
                            icon: AppIcons.ketchup,
                            description: "Supermarkets"),
                        InnerIconTiles(
                            icon: AppIcons.alcohol, description: "Alcohol"),
                        InnerIconTiles(
                            icon: AppIcons.pharmacy, description: "Pharmacy"),
                        InnerIconTiles(
                            icon: AppIcons.retail, description: "Retail"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              // height: AppDimensions.deviceHeight(context) * 0.53,
              width: AppDimensions.deviceWidth(context),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "All stores",
                      style: AppTextStyles.semiBold(fontSize: 20),
                    ),
                  ),
                  const ListTiles(),
                  const ListTiles(),
                  const ListTiles(),
                  const ListTiles(),
                  const ListTiles(),
                  const ListTiles(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
