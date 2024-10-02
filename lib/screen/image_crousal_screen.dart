import 'package:flutter/material.dart';

import '../widgets/dot_indicator.dart';
import '../widgets/image_scroller.dart';

class ImageCrousalScreen extends StatefulWidget {
  const ImageCrousalScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ImageCrousalScreenState createState() => _ImageCrousalScreenState();
}

class _ImageCrousalScreenState extends State<ImageCrousalScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<String> _images = [
    'https://images.pexels.com/photos/6889088/pexels-photo-6889088.jpeg?auto=compress&cs=tinysrgb&w=1600',
    'https://images.pexels.com/photos/10643964/pexels-photo-10643964.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/7780128/pexels-photo-7780128.jpeg?auto=compress&cs=tinysrgb&w=1600',
    'https://images.pexels.com/photos/7573942/pexels-photo-7573942.jpeg?auto=compress&cs=tinysrgb&w=1600',
    'https://images.pexels.com/photos/3390587/pexels-photo-3390587.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'
  ];

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aesthetic Image Slider'),
        centerTitle: true,
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ImageCarousel(
            images: _images,
            pageController: _pageController,
            height: 200,
          ),
          Positioned(
            bottom: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DotIndicator(
                  currentPage: _currentPage,
                  itemCount: _images.length,
                  unselectedColor: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
