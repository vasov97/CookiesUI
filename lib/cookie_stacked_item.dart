import 'package:cookies_ui/app_colors.dart';
import 'package:flutter/material.dart';

class CookieStackedItem extends StatelessWidget {
  const CookieStackedItem({super.key, required this.cookie});

  final String cookie;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            const SizedBox(
              height: 70,
            ),
            Container(
              width: 160,
              height: 180,
              decoration: BoxDecoration(
                color: AppColors.appGreyCardColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(80),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  //vertical: 25,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      cookie == 'raisin'
                          ? 'Raisins\ncookie'
                          : 'Chocolate\nchips',
                      style: const TextStyle(
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
                    Text(
                      cookie == 'raisin' ? '15 USD' : '20 USD',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Positioned(
          top: cookie == 'raisin' ? -15 : -10,
          right: 20,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                right: 0,
                bottom: cookie == 'raisin' ? 23 : 15,
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: const Offset(0, 15),
                      ),
                    ],
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/$cookie.png',
                  height: cookie == 'raisin' ? 135 : 120,
                  width: cookie == 'raisin' ? 135 : 120,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
            child: const Center(
              child: Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
