import 'package:e_commerce/screeens/banner_product_screen.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class BannerProvider extends StatefulWidget {
  const BannerProvider({super.key});

  @override
  State<BannerProvider> createState() => _BannerProviderState();
}

class _BannerProviderState extends State<BannerProvider> {
  List images = [
    'images/1.png',
    'images/2.png',
    'images/3.png',
    'images/4.png',
    'images/5.png',
  ];

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return CarouselSlider(
      options: CarouselOptions(
        height: screenHeight * 0.3,
        aspectRatio: 9 / 16,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.2,
        scrollDirection: Axis.horizontal,
      ),
      items: images.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return InkWell(
              splashColor: Theme.of(context).colorScheme.background,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const BannerProductScreen())));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 0.0),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                      image: AssetImage(i),
                      fit: BoxFit.cover), //use CachedNetworkImage(url)
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
