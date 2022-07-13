import 'package:flutter/material.dart';

import '../core/utils/constants.dart';

class CustomIconRow extends StatelessWidget {
  final String? text;
  const CustomIconRow({
    Key? key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.star,
          size: 16,
          color: Constants.mainColor,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text(
            text ?? '',
            style: TextStyle(
              color: Colors.grey[600],
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
