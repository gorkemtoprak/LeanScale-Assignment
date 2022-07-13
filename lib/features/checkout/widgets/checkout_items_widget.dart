import 'package:flutter/material.dart';

import '../../../core/utils/constants.dart';
import '../../../shared/custom_quantity_widget.dart';

class CartItemsWidget extends StatelessWidget {
  const CartItemsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Karisik Kebap',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '₺62,99',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Constants.mainColor,
              ),
            ),
          ],
        ),
        const QuantityWidget(
          price: '',
          quantity: '1',
          showPrice: false,
        ),
      ],
    );
  }
}
