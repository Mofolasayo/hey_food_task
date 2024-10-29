import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:hey_food/common/components/app_dimensions.dart';

class Carousel extends StatelessWidget {
  Carousel({super.key});

  final List<String> imageUrls = [
    'assets/images/akara.jpeg',
    'assets/images/bukateria.jpeg',
    'assets/images/rmk.jpeg',
    'assets/images/lolu.jpeg',
    'assets/images/item7go.jpeg'
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CarouselSlider(
        options: CarouselOptions(
          height: 160.0,
          autoPlay: true,
          enlargeCenterPage: false,
          viewportFraction: 0.9,
        ),
        items: imageUrls.map((url) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: AppDimensions.deviceWidth(context),
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    url,
                    fit: BoxFit.fill,
                  ),
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
