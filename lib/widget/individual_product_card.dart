import 'package:flutter/material.dart';

class IndividualProductCard extends StatelessWidget {
  const IndividualProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.fromLTRB(12, 0, 12, 8),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
      ),
      child: SingleChildScrollView(
        physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/p1.jpg'),
                ),
              ),
              height: w,
              width: double.infinity,
            ),
            const Text(
              'Product Name',
              style: TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
