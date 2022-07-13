import 'package:flutter/material.dart';

import '../../../core/utils/constants.dart';

class HomeTitlesWidget extends StatelessWidget {
  final String? title;
  final String? numbers;
  final void Function()? onTap;
  const HomeTitlesWidget({
    Key? key,
    this.title,
    this.numbers,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          title!,
          textAlign: TextAlign.left,
          style: const TextStyle(
            color: Constants.blackThree,
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text(
              'See All (${numbers!})',
              textAlign: TextAlign.right,
              style: const TextStyle(
                color: Constants.mainColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
