
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class DotIndecatorLayer extends StatelessWidget {
  const DotIndecatorLayer({
    super.key,
    required this.currentPage,
  });

  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
        dotsCount: 4,
        position: currentPage.toInt(),
        decorator: DotsDecorator(
          size: const Size.square(8.0),
          activeSize: const Size(20.0, 8.0),
          color: const Color.fromARGB(255, 227, 223, 223),
          activeColor: Colors.black,
          spacing: const EdgeInsets.all(3),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
      );
  }
}
