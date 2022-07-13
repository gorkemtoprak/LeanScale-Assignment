import 'package:flutter/material.dart';

import '../../../core/utils/constants.dart';
import '../../../shared/custom_icon.dart';
import '../../home/widgets/additional_detail_widget.dart';

class AdditionalInformationWidget extends StatelessWidget {
  final String? restaurantName;
  final String? restaurantAdress;
  final String? restaurantPhoneNumber;
  final String? time;
  final String? price;
  final String? deliveryPrice;
  final String? rate;
  const AdditionalInformationWidget(
      {Key? key,
      this.restaurantName,
      this.restaurantAdress,
      this.restaurantPhoneNumber,
      this.time,
      this.price,
      this.deliveryPrice,
      this.rate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              restaurantName ?? '',
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            CustomIconRow(
              text: rate ?? '',
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          restaurantAdress ?? '',
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            color: Constants.warmGrey,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          restaurantPhoneNumber ?? '',
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            color: Constants.greyishThree,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        AdditionalDetailWidget(
          time: time ?? '',
          minPrice: price ?? '',
          deliveryPrice: deliveryPrice ?? '',
        ),
        const SizedBox(
          height: 10,
        ),
        const Divider(
          thickness: 2,
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
