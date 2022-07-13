import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lean_scale_case/core/utils/constants.dart';
import 'package:lean_scale_case/core/utils/datas.dart';
import 'package:lean_scale_case/features/categories/subviews/categories_detailed_view.dart';
import 'package:lean_scale_case/features/home/home_view_model.dart';
import 'package:lean_scale_case/features/home/widgets/home_titles_widget.dart';
import 'package:lean_scale_case/shared/custom_category_container.dart';
import 'package:stacked/stacked.dart';

import '../../shared/custom_app_bar.dart';
import 'widgets/card_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      onModelReady: (model) => model.init(),
      builder: (context, model, _) {
        return Scaffold(
          appBar: customAppBar('Lean Scale'),
          backgroundColor: Constants.white,
          body: SingleChildScrollView(
            child: Padding(
              padding: customPadding(),
              child: Column(
                children: [
                  HomeTitlesWidget(
                    onTap: () {
                      AutoRouter.of(context).pushNamed('/categories');
                    },
                    numbers: model.foodList.length.toString(),
                    title: 'Categories',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: SizedBox(
                      height: screenHeight(context) / 10,
                      child: ListView.builder(
                        itemCount: model.foodList.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          CategoriesDetailedView(
                                        title:
                                            model.foodList[index].strCategory,
                                        image: model
                                            .foodList[index].strCategoryThumb,
                                        description: model.foodList[index]
                                            .strCategoryDescription,
                                      ),
                                    ));
                              },
                              child: CustomCategoryContainer(
                                image: model.foodList[index].strCategoryThumb,
                                title: model.foodList[index].strCategory,
                                gradient: gradient[index],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 20),
                    child: HomeTitlesWidget(
                      onTap: () {
                        AutoRouter.of(context).pushNamed('/restaurants');
                      },
                      title: 'Popular Restaurants',
                      numbers: '5',
                    ),
                  ),
                  //TODO: YOU SHOULD CHANGE THIS LATER..
                  SizedBox(
                    height: screenHeight(context),
                    child: ListView.builder(
                      itemCount: 3,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      // scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return const Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: HomeCardWidget(),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
