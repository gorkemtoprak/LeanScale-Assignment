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
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(15),
              ),
              child: Image.network(
                'https://picsum.photos/200/300',
                height: screenHeight(context) / 5,
                width: screenWidth(context) / 1.1,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Coni & Co',
              style: TextStyle(
                color: Constants.blackThree,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
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
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                height: 30,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                  border: Border.all(
                    color: Constants.warmGrey,
                    width: 1,
                  ),
                  color: Constants.white,
                ),
                child: const CustomIconRow(
                  text: '4.1',
                ),
              ),
            ),
            Container(
              height: 30,
              width: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Constants.white,
              ),
              child: IconButton(
                onPressed: () {},
                splashRadius: 20,
                icon: const Icon(
                  Icons.favorite_outline_rounded,
                  size: 18,
                  color: Constants.mainColor,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
