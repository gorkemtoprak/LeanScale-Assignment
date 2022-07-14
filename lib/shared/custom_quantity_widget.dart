import 'package:flutter/material.dart';

import '../core/utils/constants.dart';

class QuantityWidget extends StatefulWidget {
  final int? quantity;
  final String? price;
  final bool? showPrice;
  const QuantityWidget({
    Key? key,
    this.quantity = 0,
    this.price,
    this.showPrice,
  }) : super(key: key);

  @override
  State<QuantityWidget> createState() => _QuantityWidgetState();
}

class _QuantityWidgetState extends State<QuantityWidget> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        widget.showPrice!
            ? Text(
                '\$${widget.price}',
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              )
            : const SizedBox(),
        IconButton(
          onPressed: () {
            setState(() {
              if (counter > widget.quantity!) {
                counter--;
              }
            });
          },
          icon: const Icon(
            Icons.remove_circle_outline_rounded,
            color: Constants.mainColor,
          ),
        ),
        Text(
          '$counter',
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              counter++;
            });
          },
          icon: const Icon(
            Icons.add_circle_outline_rounded,
            color: Constants.mainColor,
          ),
        ),
      ],
    );
  }
}
