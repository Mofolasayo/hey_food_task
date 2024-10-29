import 'package:flutter/material.dart';
import 'package:hey_food/common/components/app_colors.dart';
import 'package:hey_food/common/components/app_icons.dart';
import 'package:hey_food/common/components/app_search_field.dart';
import 'package:hey_food/features/dashboard/widgets/inner_icon_tiles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Center(
          child: Text(
            "Search",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
          ),
        ),
        leadingWidth: 120,
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
      body: Padding(
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
                    icon: AppIcons.ketchup, description: "Supermarkets"),
                InnerIconTiles(icon: AppIcons.alcohol, description: "Alcohol"),
                InnerIconTiles(
                    icon: AppIcons.pharmacy, description: "Pharmacy"),
                InnerIconTiles(icon: AppIcons.retail, description: "Retail"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
