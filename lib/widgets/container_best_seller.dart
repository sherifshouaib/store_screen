import 'package:flutter/material.dart';
import 'package:test/widgets/container_best_seller_widget.dart';

class ContainerBestSeller extends StatelessWidget {
  const ContainerBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: double.infinity,
      color: const Color(0xff5C5C5C),
      child: const Padding(
        padding:  EdgeInsets.only(left: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Padding(
              padding:  EdgeInsets.only(left: 10, top: 22, bottom: 12),
              child: Text(
                'Best seller',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ContainerBestSellerWidget(),
                ContainerBestSellerWidget(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
