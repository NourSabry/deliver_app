import 'package:flutter/material.dart';

class SearchSection extends StatelessWidget {
  final double width;
  final double height;
  const SearchSection({
    super.key,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: width,
          height: height,
          child: const TextField(
            decoration: InputDecoration(
              hintText: "ابحث عن وجهه او مطعم",
              fillColor: Color.fromARGB(255, 243, 243, 243),
              filled: true,
              prefixIcon: Icon(Icons.search),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
