import 'package:flutter/material.dart';
import 'package:hey_food/common/components/app_textstyles.dart';

class ListTiles extends StatelessWidget {
  const ListTiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const CircleAvatar(
            maxRadius: 40,
            minRadius: 40,
          ),
          title: Text(
            'Bodija Market',
            style: AppTextStyles.medium(),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 20,
                  ),
                  Text("4.2 . 4.76K Ratings"),
                ],
              ),
              Container(
                alignment: Alignment.center,
                height: 30,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(8)),
                child: Text(
                  "Opens in 6 hours",
                  style:
                      AppTextStyles.semiBold(color: Colors.white, fontSize: 14),
                ),
              )
            ],
          ),
          trailing: IconButton(
              onPressed: () {}, icon: const Icon(Icons.favorite_outline)),
        ),
        const SizedBox(
          height: 8,
        ),
        const Divider(
          thickness: 0.7,
          color: Color.fromARGB(182, 189, 189, 189),
        ),
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }
}
