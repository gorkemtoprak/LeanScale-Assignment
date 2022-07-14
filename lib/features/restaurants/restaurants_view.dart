import 'package:flutter/material.dart';
import 'package:lean_scale_case/shared/custom_app_bar.dart';

import '../../core/utils/constants.dart';
import 'widgets/restaurants_widget.dart';

class RestaurantsView extends StatelessWidget {
  const RestaurantsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('Restaurants'),
      backgroundColor: Constants.white,
      body: Padding(
        padding: const EdgeInsets.only(bottom: 80),
        child: GridView.builder(
          padding: customPadding(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 25,
            mainAxisExtent: 310,
          ),
          itemCount: 3,
          itemBuilder: (context, index) {
            return const RestaurantsWidget();
          },
        ),
      ),
    );
  }
}
