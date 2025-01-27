import 'package:cookies_ui/crown_widget.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          child: Center(
            child: Stack(
              children: [
                Container(
                  width: screenWidth,
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(157, 0, 0, 0),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(28),
                      topRight: Radius.circular(28),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const CrownWidget(),
      ],
    );
  }
}
