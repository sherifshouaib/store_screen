import 'package:flutter/material.dart';

class ContainerBestSellerWidget extends StatelessWidget {
  const ContainerBestSellerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      width: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        border: Border.all(
          color: Colors.black87,
          width: 2,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Container(
          height: 270,
          width: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Colors.black87, // Color of the outline
              width: 1.4, // Width of the outline
            ),
            color: Colors.white,
          ),
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: const Color(0xffD6D5DB),
              ),
              child: const Icon(
                Icons.favorite,
                color: Color(0xffB3B2B8),
                size: 12,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
