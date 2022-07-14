import 'package:flutter/material.dart';

import '../../../core/utils/constants.dart';

class CartItemsWidget extends StatelessWidget {
  final String? title;
  final String? price;
  const CartItemsWidget({
    Key? key,
    this.title,
    this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title ?? '',
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              price ?? '',
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: Constants.mainColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
