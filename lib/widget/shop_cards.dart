// import 'package:e_commerce/utilities/add_button.dart';
import 'package:flutter/material.dart';

class ShopCard extends StatelessWidget {
  const ShopCard({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(top: w / 60, left: w / 120, right: w / 120),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    );
  }
}
