import 'package:flutter/material.dart';

class Titles extends StatelessWidget {
  final String text;
  final double paddingHeight;
  const Titles({
    super.key,
    required this.paddingHeight,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: paddingHeight,
      ),
      child:   Text(
      text,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
