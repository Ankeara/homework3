import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeSearchbar extends StatelessWidget {
  const HomeSearchbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 5,
      ),
      child: Row(
        children: [
          Icon(Iconsax.search_normal),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
