import 'package:flutter/material.dart';

import '../../../core/utils/constants.dart';

class HeadlineWidget extends StatelessWidget {
  final String? title;
  const HeadlineWidget({
    Key? key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title ?? '',
      textAlign: TextAlign.left,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        color: Constants.mainColor,
      ),
    );
  }
}
