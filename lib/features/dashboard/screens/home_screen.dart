import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hey_food/common/components/app_colors.dart';
import 'package:hey_food/common/components/app_dimensions.dart';
import 'package:hey_food/common/components/app_icons.dart';
import 'package:hey_food/common/components/app_textstyles.dart';
import 'package:hey_food/features/dashboard/widgets/carousel_slider.dart';
import 'package:hey_food/features/dashboard/widgets/icon_tiles.dart';
import 'package:hey_food/features/dashboard/widgets/scrollable_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(0.5),
            child: Container(
              color: const Color.fromARGB(182, 189, 189, 189),
              height: 1,
            )),
        leading: const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Oyo",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              Text("580 stores"),
            ],
          ),
        ),
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
        leadingWidth: 100,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: AppDimensions.deviceWidth(context),
              height: AppDimensions.deviceHeight(context) * 0.455,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 8, left: 20.0, right: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: AppDimensions.deviceWidth(context),
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.navyColor,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              SvgPicture.string(
                                AppIcons.banner,
                                width: 60,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Delivery unavailable',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    'Delivery is closed for today',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconTiles(
                          icon: AppIcons.pasta,
                          description: "Restaurants",
                        ),
                        IconTiles(
                          icon: AppIcons.banana,
                          description: "Grocery",
                        ),
                        IconTiles(
                          icon: AppIcons.ketchup,
                          description: "Supermarkets",
                        ),
                        IconTiles(
                          icon: AppIcons.more,
                          description: "See all",
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Carousel()
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: AppDimensions.deviceWidth(context),
              height: AppDimensions.deviceHeight(context) * 0.3,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 15, left: 20.0, right: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Eat & Save 😉",
                      style: AppTextStyles.semiBold(fontSize: 20),
                    ),
                    const Row(
                      children: [
                        Text("Discounts for you!"),
                        Spacer(),
                        Text("See all")
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ScrollableList()
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: AppDimensions.deviceWidth(context),
              height: AppDimensions.deviceHeight(context) * 0.3,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 15, left: 20.0, right: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Party Jollof in IB",
                      style: AppTextStyles.semiBold(fontSize: 20),
                    ),
                    const Row(
                      children: [
                        Text("Best of the best!"),
                        Spacer(),
                        Text("See all")
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ScrollableList()
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
