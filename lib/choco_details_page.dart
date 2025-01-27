import 'package:cookies_ui/add_to_order.dart';
import 'package:cookies_ui/app_colors.dart';
import 'package:cookies_ui/products_quantity.dart';
import 'package:cookies_ui/title_column.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class ChocoDetailsPage extends StatefulWidget {
  const ChocoDetailsPage({super.key});

  @override
  State<ChocoDetailsPage> createState() => _ChocoDetailsPageState();
}

class _ChocoDetailsPageState extends State<ChocoDetailsPage> {
  int quantity = 0;
  double price = 20.80;
  Color backgroundColor = Colors.white;
  Color textColor = Colors.black;
  Color backgroundColor2 = Colors.white;
  Color textColor2 = Colors.black;
  Color backgroundColor3 = Colors.white;
  Color textColor3 = Colors.black;
  bool isClicked = false;
  bool isClicked2 = false;
  bool isClicked3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'assets/cookies.jpg',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Stack(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 24,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                            ),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ),
                        const ProductsQuantity(),
                      ],
                    ),
                  ),
                  const TitleColumn(),
                ],
              ),
              Positioned(
                bottom: -35,
                left: -45,
                child: Container(
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        AppColors.firstGradient,
                        AppColors.secondGradient,
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50.0, left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 6.0, right: 2),
                              child: Text(
                                '$price '.toString().split('.')[0],
                                style: const TextStyle(
                                  fontSize: 40,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'USD',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.grey),
                                ),
                                Text(
                                  '.${'$price'.toString().split('.')[1]}',
                                  style: const TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Text(
                            '$quantity Units',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 12.0),
                          child: Text(
                            'Cookies',
                            style: TextStyle(
                              color: AppColors.appYellowColor,
                              fontSize: 18,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: -68,
                left: -78,
                child: DottedBorder(
                  color: Colors.white,
                  strokeWidth: 2,
                  dashPattern: const [6],
                  borderType: BorderType.Circle,
                  child: Container(
                    width: 325,
                    height: 325,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ),
              const AddToOrder(),
              Positioned(
                bottom: 58,
                right: 120,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isClicked = !isClicked;

                      if (isClicked) {
                        quantity = 32;
                        backgroundColor = Colors.black;
                        textColor = Colors.white;
                        backgroundColor2 = Colors.white;
                        textColor2 = Colors.black;
                        backgroundColor3 = Colors.white;
                        textColor3 = Colors.black;
                      } else {
                        backgroundColor = Colors.white;
                        textColor = Colors.black;
                        isClicked2 = false;
                        isClicked3 = false;
                      }
                    });
                  },
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: backgroundColor,
                      border: Border.all(
                        color: AppColors.secondGradient,
                        width: 3.0,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '32',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, color: textColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 188,
                right: 165,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isClicked2 = !isClicked2;

                      if (isClicked2) {
                        quantity = 24;
                        backgroundColor2 = Colors.black;
                        textColor2 = Colors.white;
                        backgroundColor = Colors.white;
                        textColor = Colors.black;
                        backgroundColor3 = Colors.white;
                        textColor3 = Colors.black;
                      } else {
                        backgroundColor2 = Colors.white;
                        textColor2 = Colors.black;
                        isClicked = false;
                        isClicked3 = false;
                      }
                    });
                  },
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: backgroundColor2,
                      border: Border.all(
                        color: AppColors.secondGradient,
                        width: 3.0,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '24',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, color: textColor2),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 235,
                left: 42,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isClicked3 = !isClicked3;

                      if (isClicked3) {
                        quantity = 16;
                        backgroundColor3 = Colors.black;
                        textColor3 = Colors.white;
                        backgroundColor2 = Colors.white;
                        textColor2 = Colors.black;
                        backgroundColor = Colors.white;
                        textColor = Colors.black;
                      } else {
                        backgroundColor3 = Colors.white;
                        textColor3 = Colors.black;
                        isClicked = false;
                        isClicked2 = false;
                      }
                    });
                  },
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: backgroundColor3,
                      border: Border.all(
                        color: AppColors.secondGradient,
                        width: 3.0,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '16',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, color: textColor3),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
