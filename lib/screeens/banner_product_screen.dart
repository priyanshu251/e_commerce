import 'package:e_commerce/widget/shop_cards.dart';
import 'package:flutter/material.dart';

class BannerProductScreen extends StatefulWidget {
  const BannerProductScreen({super.key});

  @override
  State<BannerProductScreen> createState() => _BannerProductScreenState();
}

class _BannerProductScreenState extends State<BannerProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 232, 253),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: const Text(
          'Banner title',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              ))
        ],
      ),
      body: GridView.builder(
        physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2 / 3,
        ),
        itemCount: 8,
        itemBuilder: (context, index) {
          return const ShopCard();
        },
      ),
    );
  }
}
