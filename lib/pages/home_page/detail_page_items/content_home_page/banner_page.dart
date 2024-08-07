import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BannerPage extends StatefulWidget {
  const BannerPage({super.key});

  @override
  State<BannerPage> createState() => _BannerPageState();
}

class _BannerPageState extends State<BannerPage> {
  final List<String> images = [
    "assets/images/banner1.png",
    "assets/images/banner2.png",
    "assets/images/banner3.png",
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        options: CarouselOptions(
          height: 120,
          autoPlay: false,
          enableInfiniteScroll: true,
          viewportFraction: 0.7,
        ),
        items: images.map((imagePath) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                height: 120,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.contain, // Mengatur gambar agar tidak tercrop
                  ),
                ),
              );
            },
          );
        }).toList());
  }
}
