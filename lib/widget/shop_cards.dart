// import 'package:e_commerce/utilities/add_button.dart';
import 'package:e_commerce/screeens/individual_product_screen.dart';
import 'package:flutter/material.dart';

class ShopCard extends StatelessWidget {
  const ShopCard({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: ((context) => const IndividualProductScreen())));
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: EdgeInsets.only(top: w / 60, left: w / 120, right: w / 120),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/p1.jpg'),
                  ),
                ),
                height: 100,
                width: double.infinity,
              ),
            ),
            const Text('Product_Name'),
            const Text('Description'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Price'),
                Text('ADD'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
