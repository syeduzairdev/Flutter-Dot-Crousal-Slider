import 'package:flutter/material.dart';

class ImageCarousel extends StatelessWidget {
  final List<String> images;
  final PageController pageController;
  final double height;

  const ImageCarousel({
    Key? key,
    required this.images,
    required this.pageController,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: PageView.builder(
        controller: pageController,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Image.network(
            images[index],
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}
