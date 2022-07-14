import 'package:flutter/material.dart';
import 'package:lean_scale_case/features/checkout/widgets/restaurant_information_widget.dart';

import '../../core/utils/constants.dart';
import '../../shared/custom_app_bar.dart';
import '../../shared/custom_elevated_button.dart';
import 'widgets/checkout_items_widget.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('Checkout'),
      backgroundColor: Constants.white,
      body: Column(
        children: [
          const RestaurantsInformationRow(
            imageUrl:
                'https://b.zmtcdn.com/data/reviews_photos/e91/11cf53fee386ba29d2f48f22c901fe91_1425842995.jpg',
            restaurantName: 'asdasd',
            restaurantAddress: 'aasdasd',
          ),
          ListView.builder(
            itemCount: 4,
            shrinkWrap: true,
            padding: customPadding(),
            itemBuilder: (BuildContext context, int index) {
              return const Padding(
                padding: EdgeInsets.only(bottom: 15.0),
                child: CartItemsWidget(),
              );
            },
          ),
          const Spacer(
            flex: 2,
          ),
          Padding(
            padding: customPadding(),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CustomElevatedButton(
                onTap: () {
                  print('aa');
                },
                height: 50,
                width: screenWidth(context),
                color: Constants.mainColor,
                iconData: Icons.shopping_cart_checkout_rounded,
                title: 'Siparişi Tamamla',
                titleColor: Constants.white,
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
