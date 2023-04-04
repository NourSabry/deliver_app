import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/row_information.dart';

class YouMayLike extends StatelessWidget {
  final double width;
  const YouMayLike({
    super.key,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: width,
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: const Color.fromARGB(255, 207, 207, 207),
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ImageToLike(),
              const Text(
                "وجبه الذكيله",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text(
                    "30ج ",
                    style: TextStyle(color: Colors.orange),
                  ),
                  Text(
                    "60ج ",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              const RowInformation(
                icon: Icons.home_mini_rounded,
                text: "مطعم هندي-",
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }
}

class ImageToLike extends StatelessWidget {
  const ImageToLike({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          child: Image.asset(
            "assets/images/offer.png",
            fit: BoxFit.fitWidth,
          ),
        ),
        Positioned(
          left: 3,
          bottom: 1,
          child: Card(
            elevation: 1,
            margin: const EdgeInsets.all(5),
            color: Colors.white,
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: const Icon(
              Icons.shopping_cart_outlined,
            ),
          ),
        ),
      ],
    );
  }
}
