import 'package:flutter/material.dart';

import '../../../core/utils/constants.dart';
import '../../../shared/custom_icon.dart';
import 'additional_detail_widget.dart';

class HomeCardWidget extends StatelessWidget {
  const HomeCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
          child: Image.network(
            'https://picsum.photos/200/300',
            height: screenHeight(context) / 5,
            width: screenWidth(context) / 1,
            fit: BoxFit.fill,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Coni & Co',
              style: TextStyle(
                color: Constants.blackThree,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            CustomIconRow(
              text: '4.3',
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: AdditionalDetailWidget(
            time: '15-45',
            minPrice: 'Min. \$${20}',
            deliveryPrice: 'Delivery: \$${5.99}',
          ),
        ),
      ],
    );
  }
}
