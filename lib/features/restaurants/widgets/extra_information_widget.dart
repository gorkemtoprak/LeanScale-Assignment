import 'package:flutter/material.dart';

import '../../../core/utils/constants.dart';

class ExtraInformationWidget extends StatelessWidget {
  final IconData? iconData;
  final String? text;
  const ExtraInformationWidget({
    Key? key,
    this.iconData,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0),
      child: Row(
        children: [
          Icon(
            iconData,
            size: 16,
            color: Constants.mainColor,
          ),
          const SizedBox(
            width: 3,
          ),
          Text(
            text ?? '',
            style: TextStyle(
              color: Colors.grey[600],
              fontWeight: FontWeight.w600,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
