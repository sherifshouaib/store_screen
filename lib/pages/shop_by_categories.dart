import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:test/widgets/container_best_seller.dart';
import 'package:test/widgets/list_view_categories.dart';

class ShopByCategories extends StatelessWidget {
  const ShopByCategories();

  final List<String> Categories1 = const [
    'Pre-Builds',
    'Monitors',
    'Chairs & Tables',
    'Gift Cards'
  ];

  final List<String> Categories2 = const [
    'Keyboards',
    'Mouse & \nMousepads',
    'Headsets & \nMicrophones',
    'Accessoires'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff060D20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 7, top: 26, left: 12),
              child: Text(
                'Shop by categories',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),
            ListViewCategories(Categories: Categories1),
            ListViewCategories(Categories: Categories2),
            const ContainerBestSeller(),
          ],
        ),
      ),
    );
  }
}
