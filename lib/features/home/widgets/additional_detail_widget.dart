import 'package:flutter/material.dart';

import '../../../core/utils/constants.dart';

class AdditionalDetailWidget extends StatelessWidget {
  final String? time;
  final String? minPrice;
  final String? deliveryPrice;
  const AdditionalDetailWidget({
    Key? key,
    this.time,
    this.minPrice,
    this.deliveryPrice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.timer_sharp,
          size: 16,
          color: Constants.mainColor,
        ),
        Text(
          time!,
          style: TextStyle(
            color: Colors.grey[600],
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        const Icon(
          Icons.currency_lira_sharp,
          size: 16,
          color: Constants.mainColor,
        ),
        Text(
          minPrice!,
          style: TextStyle(
            color: Colors.grey[600],
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        const Icon(
          Icons.delivery_dining,
          size: 16,
          color: Constants.mainColor,
        ),
        Text(
          deliveryPrice!,
          style: TextStyle(
            color: Colors.grey[600],
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
