import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final double width;
  final double height;
  final double bottom;
  final double left;
  const Category({
    super.key,
    required this.height,
    required this.width,
    required this.bottom,
    required this.left,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  width: 3,
                  color: const Color.fromARGB(255, 155, 155, 155),
                ),
              ),
              child: Image.asset(
                "assets/images/offer.png",
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: bottom,
              left: left,
              // right: right,
              child: const Text(
                "المطاعم",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(width: 10),
      ],
    );
  }
}
