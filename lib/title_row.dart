import 'package:cookies_ui/app_colors.dart';
import 'package:cookies_ui/choco_details_page.dart';
import 'package:flutter/material.dart';

class TitleRow extends StatelessWidget {
  const TitleRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Cookies',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              'Premium',
              style: TextStyle(
                color: AppColors.appYellowColor,
                fontSize: 24,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ChocoDetailsPage(),
            ),
          ),
          child: Text(
            'See more',
            style: TextStyle(
              color: AppColors.appYellowColor,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
