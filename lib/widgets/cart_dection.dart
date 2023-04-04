import 'package:flutter/material.dart';

class CartSection extends StatelessWidget {
  final double horizontal;
  final double vertical;
  const CartSection({
    super.key,
    required this.horizontal,
    required this.vertical,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: horizontal,
          vertical: vertical,
          ),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 243, 243, 243),
      ),
      child: Row(
        children: [
          Stack(
            children: const [
              Icon(
                Icons.add_shopping_cart_outlined,
                size: 20,
              ),
              Positioned(
                left: 10,
                top: -7,
                child: Text(
                  "4",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
         const  Text("300 ج")
        ],
      ),
    );
  }
}
