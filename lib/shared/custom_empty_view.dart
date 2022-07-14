import 'package:flutter/material.dart';
import 'package:lean_scale_case/core/utils/constants.dart';
import 'package:lottie/lottie.dart';

class CustomEmptyView extends StatelessWidget {
  const CustomEmptyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.white,
      body: Center(
        child: Lottie.network(
          'https://assets10.lottiefiles.com/packages/lf20_poqmycwy.json',
          height: screenHeight(context) / 5,
          width: screenWidth(context) / 3,
        ),
      ),
    );
  }
}
