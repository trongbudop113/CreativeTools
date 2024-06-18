import 'package:carousel_slider/carousel_slider.dart';
import 'package:creative_tools/page/recipe/model/banner/banner_model.dart';
import 'package:flutter/material.dart';

class BannerView extends StatelessWidget {
  final BannerModel model;
  const BannerView({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        aspectRatio: 1280 / 640,
        enlargeCenterPage: true,
      ),
      items: model.listBanner.map((data) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(data),
        );
      }).toList(),
    );
  }
}
