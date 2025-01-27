import 'package:cookies_ui/app_colors.dart';
import 'package:flutter/material.dart';

class TitleColumn extends StatelessWidget {
  const TitleColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
          const Text(
            'Cookies',
            style: TextStyle(
              color: Colors.white,
              fontSize: 80,
              fontWeight: FontWeight.w300,
            ),
          ),
          const Text(
            'Choco chips',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.w300,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 170,
            height: 45,
            child: ElevatedButton(
              style: ButtonStyle(
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.0),
                    side: const BorderSide(
                      color: Colors.white,
                      width: 1.0,
                    ),
                  ),
                ),
                backgroundColor: WidgetStateProperty.all(Colors.transparent),
              ),
              onPressed: () {},
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.menu_book_rounded,
                    color: Colors.white,
                  ),
                  SizedBox(width: 8.0),
                  Text(
                    'Information',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
