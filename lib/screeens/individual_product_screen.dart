import 'package:e_commerce/utilities/add_button.dart';
import 'package:e_commerce/widget/individual_product_card.dart';
import 'package:flutter/material.dart';

class IndividualProductScreen extends StatelessWidget {
  const IndividualProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 232, 253),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Expanded(
              child: IndividualProductCard(),
            ),
            Column(
              children: const [],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Price: 8,499',
                    style: TextStyle(fontSize: 24),
                  ),
                  AddButton()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
