import 'package:cookies_ui/app_colors.dart';
import 'package:flutter/material.dart';

class CookieRow extends StatelessWidget {
  const CookieRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              bottom: 30,
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 4,
                      offset: const Offset(0, 20),
                    ),
                  ],
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/oats.png',
                height: 150,
                width: 150,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Oats\ncookie',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            Row(
              children: [
                Image.asset(
                  'assets/crown.png',
                  height: 16,
                  width: 16,
                  color: AppColors.appYellowColor,
                ),
                Text(
                  ' PREMIUM',
                  style: TextStyle(
                    color: AppColors.appYellowColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(left: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '14 USD',
                style: TextStyle(
                  decoration: TextDecoration.lineThrough,
                  decorationColor: Colors.white,
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                '20 USD',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
