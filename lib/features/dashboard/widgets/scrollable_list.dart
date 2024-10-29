import 'package:flutter/material.dart';
import 'package:hey_food/common/components/app_textstyles.dart';

class ScrollableList extends StatelessWidget {
  ScrollableList({super.key});

  final List<String> imageUrls = [
    'assets/images/jollofsquare.jpeg',
    'assets/images/hakuna_matata.jpeg',
    'assets/images/jollofsquare.jpeg',
    'assets/images/pizza.jpeg',
  ];

  final List<String> titles = [
    'Jollof Square Sango',
    'Hakuna Matata',
    'Jollof Square Sango',
    'Pizza Place',
  ];
  final List<String> descriptions = [
    '1.9 km . Chicken, Fastfood, Rice',
    '0.8 km . Shawarma',
    '4.0 km . Rice, Chicken, Turkey',
    '6.0 km . Pizza, Shawarma',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imageUrls.length,
        itemBuilder: (context, index) {
          return Container(
            width: MediaQuery.of(context).size.width * 0.7,
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    imageUrls[index],
                    height: 130,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      titles[index],
                      style: AppTextStyles.medium(),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(20)),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                            size: 20,
                          ),
                          Text("4.5")
                        ],
                      ),
                    )
                  ],
                ),
                Text(descriptions[index])
              ],
            ),
          );
        },
      ),
    );
  }
}
