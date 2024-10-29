import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconTiles extends StatelessWidget {
  const IconTiles({
    super.key,
    required this.icon,
    required this.description,
  });
  final String icon;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              border: Border.all(
                style: BorderStyle.solid,
                color: const Color.fromARGB(191, 189, 189, 189),
                width: 0.6,
              ),
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: SvgPicture.string(
              icon,
              width: 70,
              height: 75,
            ),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          description,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
