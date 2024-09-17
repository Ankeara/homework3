import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          "assets/images/medicine.png",
          width: 35,
          height: 35,
          fit: BoxFit.contain,
        ),
        Text(
          "PharmaMate",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          style: IconButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            backgroundColor: Colors.white,
            fixedSize: const Size(55, 55),
          ),
          icon: const Icon(Iconsax.notification),
        )
      ],
    );
  }
}
