import 'package:flutter/material.dart';

class AddToOrder extends StatelessWidget {
  const AddToOrder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 58,
      right: 25,
      child: Container(
        width: 80,
        height: 120,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shopping_bag,
              color: Colors.black,
            ),
            Padding(
              padding: EdgeInsets.only(top: 8),
              child: Column(
                children: [
                  Text(
                    'Add to',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Order',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
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
