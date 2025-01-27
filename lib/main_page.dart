import 'package:cookies_ui/app_colors.dart';
import 'package:cookies_ui/bottom_nav.dart';
import 'package:cookies_ui/cookie_row.dart';
import 'package:cookies_ui/cookie_stacked_item.dart';
import 'package:cookies_ui/header_row.dart';
import 'package:cookies_ui/title_row.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Stack(children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF2f2f38),
                  Color(0xFF252429),
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 16.0, left: 8, right: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: HeaderRow(),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: TitleRow(),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CookieStackedItem(
                          cookie: 'choco',
                        ),
                        CookieStackedItem(
                          cookie: 'raisin',
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'Offers',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'See more',
                          style: TextStyle(
                            color: AppColors.appYellowColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 4,
                      vertical: 6,
                    ),
                    child: Stack(
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: 450,
                              height: 110,
                              decoration: BoxDecoration(
                                color: AppColors.appGreyCardColor,
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(80),
                                ),
                              ),
                              child: const CookieRow(),
                            ),
                          ],
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
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    //left: 0,
                    child: Center(
                      child: Container(
                        width: screenWidth * 0.9,
                        height: 60,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomNav(screenWidth: screenWidth),
        ]),
      ),
    );
  }
}
