import 'package:flutter/material.dart';
import 'package:e_commerce/constants.dart';
import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List images = [
    'images/1.png',
    'images/2.png',
    'images/3.png',
    'images/4.png',
    'images/5.png',
  ];

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxScrolled) {
          return <Widget>[
            extendedAppBar(innerBoxScrolled),
          ];
        },
        body: Builder(builder: (context) {
          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: banner(screenHeight),
                ),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    'Shop By Category',
                    style: kHomeTitleStyle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                  child: GridView.builder(
                    physics: const ScrollPhysics(
                        parent: NeverScrollableScrollPhysics()),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 3 / 3,
                    ),
                    itemCount: 9,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(
                            bottom: w / 30, left: w / 60, right: w / 60),
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 230, 232, 253),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }

  SliverAppBar extendedAppBar(bool innerBoxScrolled) {
    return SliverAppBar(
      backgroundColor: const Color(0xFF696C9F),
      title: const Text(
        'E-Commerce_App',
        style: TextStyle(fontSize: 25),
      ),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
      ],
      bottom: PreferredSize(
        preferredSize: const Size(double.infinity, 70),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  style: const TextStyle(color: Colors.white),
                  decoration: kSearchTextFeild.copyWith(
                    hintText: 'Search',
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                  onChanged: (value) {},
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.mic, color: Colors.white)),
            ],
          ),
        ),
      ),
      pinned: true,
      floating: true,
      forceElevated: innerBoxScrolled,
    );
  }

  CarouselSlider banner(double screenHeight) {
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
            return GestureDetector(
              onTap: () {},
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
