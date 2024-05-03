import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test/pages/shop_by_categories.dart';
import 'package:test/widgets/custom_icon.dart';
import 'package:test/widgets/custom_item_app.dart';

class CustomIconButton extends StatefulWidget {
  const CustomIconButton({super.key, required this.icon});
  final IconData icon;

  @override
  State<CustomIconButton> createState() => _CustomIconButtonState();
}

class _CustomIconButtonState extends State<CustomIconButton> {
  OverlayEntry? _overlayEntry;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        // Show the modal bottom sheet
        flag == false
            ? showModalBottomSheet<void>(
                context: context,
                builder: (context) {
                  return WillPopScope(
                    onWillPop: () async {
                      _removeOverlayEntry();

                      return true; // Allow dismissal
                    },
                    child: DraggableScrollableSheet(
                      initialChildSize: 1,
                      maxChildSize: 1,
                      builder: (BuildContext context,
                          ScrollController scrollController) {
                        flag = true;

                        return const FractionallySizedBox(
                          heightFactor: 2,
                          child: ShopByCategories(),
                        );
                      },
                    ),
                  );
                },
              ).whenComplete(() {
                // Remove the overlay entry when the modal bottom sheet is dismissed
                _removeOverlayEntry();
              })
            : _removeOverlayEntry;
        // Create the overlay entry for the fixed widget
        _createOverlayEntry();

        // return FractionallySizedBox(
        //     heightFactor: 0.7,
        //     child: ShopByCategories(),
        //   );
      },
      icon: Icon(widget.icon),
      color: Colors.white,
    );
  }

  void _createOverlayEntry() {
    // Create the overlay entry with the fixed widget
    _overlayEntry = OverlayEntry(
      builder: (BuildContext context) {
        return Positioned(
          bottom: 0,
          width: 420,
          height: 65,
          // left: 16,
          child: Container(
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
        );
      },
    );

    // Insert the overlay entry to show the fixed widget over the modal bottom sheet
    Overlay.of(context)?.insert(_overlayEntry!);
  }

  void _removeOverlayEntry() {
    // Remove the overlay entry when the modal bottom sheet is dismissed
    flag = false;
    _overlayEntry?.remove();
    _overlayEntry = null;
  }
}

bool flag = false;
