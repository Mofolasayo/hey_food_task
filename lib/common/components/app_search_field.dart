import 'package:flutter/material.dart';
import 'package:hey_food/common/components/app_dimensions.dart';
import 'package:hey_food/common/components/app_textstyles.dart';

class AppSearchField extends StatelessWidget {
  const AppSearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: AppDimensions.deviceWidth(context) * 0.83,
          child: TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[100],
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10)),
                prefixIcon: const Icon(Icons.search),
                hintText: "Search",
                hintStyle: AppTextStyles.light(fontSize: 14)),
          ),
        ),
        const Spacer(),
        const Icon(
          Icons.filter_list_outlined,
          size: 35,
        )
      ],
    );
  }
}
