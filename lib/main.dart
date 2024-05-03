import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test/widgets/custom_icon.dart';
import 'package:test/widgets/custom_icon_button_top.dart';
import 'package:test/widgets/custom_icon_button.dart';
import 'package:test/widgets/custom_item_app.dart';
import 'package:test/widgets/custom_text_field.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              color: const Color(0xff060D20),
              height: 85,
              child: Padding(
                padding: EdgeInsets.only(top: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const CustomIconButtonTop(icon: Icons.add),
                    const SizedBox(
                      width: 270,
                      height: 40,
                      child: CustomTextField(),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.shopping_bag_sharp),
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: const Color(0xff060D20),
              height: 70,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomIcon(
                    icon: FontAwesomeIcons.home,
                    text: 'Home',
                  ),
                  CustomIcon(
                    icon: FontAwesomeIcons.user,
                    text: 'Profile',
                  ),
                  CustomIcon(
                    icon: FontAwesomeIcons.gear,
                    text: 'Settings',
                  ),
                  CustomItemApp(
                    icon: FontAwesomeIcons.borderAll,
                    text: 'Categories',
                  ),
                ],
              ),
            ),
          
          
          ],
        ),
      ),
    );
  }
}
