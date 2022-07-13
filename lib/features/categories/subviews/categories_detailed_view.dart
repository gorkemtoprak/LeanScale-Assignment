import 'package:flutter/material.dart';
import 'package:lean_scale_case/core/utils/constants.dart';
import 'package:lean_scale_case/features/home/home_view_model.dart';
import 'package:lean_scale_case/shared/custom_app_bar.dart';
import 'package:stacked/stacked.dart';

class CategoriesDetailedView extends StatelessWidget {
  final String? title;
  final String? image;
  const CategoriesDetailedView({
    Key? key,
    required this.title,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, model, _) {
        return Scaffold(
          appBar: customAppBarWithLeading(title ?? '', context),
          backgroundColor: Constants.white,
          body: Padding(
            padding: customPadding(),
            child: Column(
              children: [
                Image.network(
                  image ?? '',
                  fit: BoxFit.cover,
                  height: screenHeight(context) / 3.5,
                  width: screenWidth(context),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
