import 'package:flutter/material.dart';

class ReordingWidget extends StatelessWidget {
  final double height;
  final double width;
  final double leftPadding;
  const ReordingWidget({
    super.key,
    required this.height,
    required this.width,
    required this.leftPadding,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: height,
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
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                    width: 30,
                    child: Image.asset("assets/images/offer.png"),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        "مطعم هندي",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text("وجبع العائله"),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Icon(
                      Icons.rotate_left_outlined,
                      color: Colors.green,
                    ),
                    Text(
                      "اعاده الطلب",
                      style: TextStyle(
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
     const   SizedBox(width: 10),
      ],
    );
  }
}
