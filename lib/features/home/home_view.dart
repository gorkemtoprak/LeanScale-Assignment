import 'package:flutter/material.dart';
import 'package:lean_scale_case/core/utils/constants.dart';
import 'package:lean_scale_case/features/home/widgets/home_titles_widget.dart';
import 'package:lean_scale_case/shared/custom_category_container.dart';

import '../../shared/custom_app_bar.dart';
import 'widgets/card_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('Lean Scale'),
      backgroundColor: Constants.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: customPadding(),
          child: Column(
            children: [
              HomeTitlesWidget(
                onTap: () {},
                numbers: '5',
                title: 'Categories',
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: SizedBox(
                  height: screenHeight(context) / 10,
                  child: ListView.builder(
                    itemCount: 5,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return const Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: CustomCategoryContainer(
                          image: 'https://picsum.photos/200/300',
                          title: 'Fast-Food',
                        ),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 20),
                child: HomeTitlesWidget(
                  onTap: () {},
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
  }
}
