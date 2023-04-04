import 'package:flutter/material.dart';

class OffersContainer extends StatelessWidget {
  final double width;
  final double height;
  const OffersContainer({
    super.key,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            width: 3,
            color: const Color.fromARGB(255, 155, 155, 155),
          )),
      child: Image.asset(
        "assets/images/offer.png",
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
