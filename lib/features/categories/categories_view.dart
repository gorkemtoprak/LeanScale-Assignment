import 'package:flutter/material.dart';
import 'package:lean_scale_case/core/utils/constants.dart';
import 'package:lean_scale_case/features/home/home_view_model.dart';
import 'package:lean_scale_case/shared/custom_app_bar.dart';
import 'package:stacked/stacked.dart';

import '../../core/utils/datas.dart';
import 'subviews/categories_detailed_view.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      onModelReady: (model) => model.init(),
      builder: (context, model, _) {
        return Scaffold(
          appBar: customAppBarWithLeading('Categories', context),
          backgroundColor: Constants.white,
          body: ListView.builder(
            itemCount: model.foodList.length,
            padding: customPadding(),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CategoriesDetailedView(
                          title: model.foodList[index].strCategory,
                          image: model.foodList[index].strCategoryThumb,
                          description:
                              model.foodList[index].strCategoryDescription,
                          index: index,
                        ),
                      ));
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              model.foodList[index].strCategoryThumb ?? '',
                              width: screenWidth(context),
                              height: 90,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          child: Opacity(
                            opacity: 0.65,
                            child: Container(
                              width: screenWidth(context),
                              height: 90,
                              decoration: BoxDecoration(
                                gradient: gradient[index],
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 35),
                            child: Text(
                              model.foodList[index].strCategory ?? '',
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
