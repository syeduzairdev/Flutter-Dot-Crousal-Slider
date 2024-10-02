import 'package:flutter/material.dart';

class DotIndicator extends StatelessWidget {
  final int currentPage;
  final int itemCount;
  final double size;
  final Color selectedColor;
  final Color unselectedColor;

  const DotIndicator({
    Key? key,
    required this.currentPage,
    required this.itemCount,
    this.size = 10.0,
    this.selectedColor = Colors.blue,
    this.unselectedColor = Colors.grey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(itemCount, (index) {
        return Container(
          width: size,
          height: size,
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: currentPage == index ? selectedColor : unselectedColor,
          ),
        );
      }),
    );
  }
}
