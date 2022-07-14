import 'package:flutter/material.dart';
import 'package:lean_scale_case/core/utils/constants.dart';
import 'package:lean_scale_case/features/home/home_view_model.dart';
import 'package:lean_scale_case/shared/custom_app_bar.dart';
import 'package:stacked/stacked.dart';

class CategoriesDetailedView extends StatelessWidget {
  final String? title;
  final String? image;
  final String? description;
  final int? index;
  const CategoriesDetailedView({
    Key? key,
    required this.title,
    this.image,
    this.description,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      onModelReady: (model) => model.init(),
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
                  fit: BoxFit.fill,
                  height: screenHeight(context) / 5,
                  width: screenWidth(context),
                ),
                const SizedBox(height: 20),
                Text(
                  description ?? '',
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
