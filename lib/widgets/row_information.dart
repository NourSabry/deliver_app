import 'package:flutter/material.dart';

class RowInformation extends StatelessWidget {
  final String text;
  final IconData icon;
  const RowInformation({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(icon),
        Text(text),
      ],
    );
  }
}
