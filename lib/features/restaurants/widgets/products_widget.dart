import 'package:flutter/material.dart';

import '../../../core/utils/constants.dart';
import '../../../shared/custom_quantity_widget.dart';

class ProductsListWidget extends StatelessWidget {
  final String? productTitle;
  final String? productDetails;
  final String? productQuantity;
  final String? productPrice;
  final String? productImage;
  const ProductsListWidget({
    Key? key,
    this.productTitle,
    this.productDetails,
    this.productQuantity,
    this.productPrice,
    this.productImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                productTitle ?? '',
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
                productDetails ?? '',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Constants.warmGrey,
                ),
              ),
              // const SizedBox(
              //   height: 10,
              // ),
              QuantityWidget(
                quantity: 0,
                price: productPrice ?? '',
                showPrice: true,
              )
            ],
          ),
        ),
        Container(
          height: 85,
          width: 85,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(16),
            ),
            border: Border.all(
              color: Constants.warmGrey,
              width: 2,
            ),
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(14),
            ),
            child: Image.network(
              productImage ?? '',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
