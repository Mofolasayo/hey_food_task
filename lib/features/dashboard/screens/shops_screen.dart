import 'package:flutter/material.dart';
import 'package:hey_food/common/components/app_colors.dart';
import 'package:hey_food/common/components/app_dimensions.dart';
import 'package:hey_food/common/components/app_icons.dart';
import 'package:hey_food/common/components/app_search_field.dart';
import 'package:hey_food/common/components/app_textstyles.dart';
import 'package:hey_food/features/dashboard/widgets/icon_tiles.dart';

class ShopsScreen extends StatelessWidget {
  const ShopsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        leading: const Center(
          child: Text(
            "Shops",
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
              height: AppDimensions.deviceHeight(context) * 0.42,
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
                        IconTiles(icon: AppIcons.phone, description: "Phones "),
                        IconTiles(
                            icon: AppIcons.beauty,
                            description: "Helath & Beauty"),
                        IconTiles(
                            icon: AppIcons.pharmacy, description: "Pharmacy"),
                        IconTiles(icon: AppIcons.retail, description: "Retail"),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconTiles(
                            icon: AppIcons.personal,
                            description: "Personal care"),
                        IconTiles(
                            icon: AppIcons.alcohol, description: "Alcohol"),
                        IconTiles(icon: AppIcons.baby, description: "Baby"),
                        IconTiles(
                            icon: AppIcons.ketchup,
                            description: "Supermarkets"),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "See more",
                          style: AppTextStyles.medium(
                              color: AppColors.primaryColor),
                        )
                      ],
                    )
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
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Shop by brands",
                      style: AppTextStyles.semiBold(fontSize: 18),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Wrap(
                      spacing: 10.0,
                      runSpacing: 5.0,
                      children: [
                        BrandTiles(
                          brand: "Samsung",
                        ),
                        BrandTiles(
                          brand: "Itel",
                        ),
                        BrandTiles(
                          brand: "New age",
                        ),
                        BrandTiles(
                          brand: "Shplus",
                        ),
                        BrandTiles(
                          brand: "Poolee",
                        ),
                        BrandTiles(
                          brand: "Paloma",
                        ),
                        BrandTiles(
                          brand: "Swiss air freshener",
                        ),
                        BrandTiles(
                          brand: "Freebeze",
                        ),
                        BrandTiles(
                          brand: "Glade",
                        ),
                        BrandTiles(
                          brand: "Wind spray",
                        ),
                        BrandTiles(
                          brand: "Air baby",
                        ),
                        BrandTiles(
                          brand: "Wind",
                        ),
                        BrandTiles(
                          brand: "Sunshine",
                        ),
                        BrandTiles(
                          brand: "Romano",
                        ),
                        BrandTiles(
                          brand: "Nivea",
                        ),
                        BrandTiles(
                          brand: "Air joy",
                        ),
                        BrandTiles(
                          brand: "Rexona",
                        ),
                        BrandTiles(
                          brand: "Sure",
                        ),
                        BrandTiles(
                          brand: "Confetti",
                        ),
                        BrandTiles(
                          brand: "Oraimo",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BrandTiles extends StatelessWidget {
  const BrandTiles({
    super.key,
    required this.brand,
  });
  final String brand;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
          side: const BorderSide(
              color: Color.fromARGB(191, 189, 189, 189), width: 1),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10)),
      child: Text(
        brand,
        style: AppTextStyles.light(fontSize: 15),
      ),
    );
  }
}
