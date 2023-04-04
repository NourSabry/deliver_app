import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/row_information.dart';

class MostRequestedOrder extends StatelessWidget {
  final double width;
   final double heightImage;
  const MostRequestedOrder({
    super.key,
     required this.width,
    required this.heightImage,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: width,
          // height: height,
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
              SizedBox(
                width: double.infinity,
                height: heightImage,
                child: Image.asset(
                  "assets/images/offer.png",
                  fit: BoxFit.cover,
                ),
              ),
              const Text(
                "كوك دور",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Text(
                "برجر/فرايد تشيكن",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  RowInformation(
                    text: "45 دقيقه",
                    icon: Icons.timelapse,
                  ),
                  RowInformation(
                    text: "15 ج ",
                    icon: Icons.car_rental,
                  ),
                  RowInformation(
                    text: "4.5  ",
                    icon: Icons.star,
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(width: 10),
      ],
    );
  }
}

