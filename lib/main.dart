import 'package:flutter/material.dart';

import 'screen/image_crousal_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Image Slider',
        home: ImageCrousalScreen());
  }
}
