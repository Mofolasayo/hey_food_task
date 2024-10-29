import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hey_food/common/components/app_textstyles.dart';

class InnerIconTiles extends StatelessWidget {
  const InnerIconTiles({
    super.key,
    required this.icon,
    required this.description,
  });
  final String icon;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      width: 90,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          border: Border.all(
            style: BorderStyle.solid,
            color: const Color.fromARGB(182, 189, 189, 189),
            width: 0.6,
          ),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: SvgPicture.string(
              icon,
              width: 60,
              height: 65,
            ),
          ),
          Text(
            description,
            style: AppTextStyles.semiBold(fontSize: 12),
          )
        ],
      ),
    );
  }
}
//color: const Color.fromARGB(182, 189, 189, 189),