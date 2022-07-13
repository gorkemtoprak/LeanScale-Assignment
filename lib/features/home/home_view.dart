import 'package:flutter/material.dart';
import 'package:lean_scale_case/core/utils/constants.dart';
import 'package:lean_scale_case/features/home/widgets/home_titles_widget.dart';
import 'package:lean_scale_case/shared/custom_category_container.dart';
import 'package:lean_scale_case/shared/custom_icon.dart';

import 'widgets/additional_detail_widget.dart';
import 'widgets/card_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Constants.white,
        title: const Text(
          'Lean Scale',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Constants.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_basket_outlined,
              color: Constants.black,
            ),
          )
        ],
      ),
      backgroundColor: Constants.white,
      body: Padding(
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
            const HomeCardWidget()
          ],
        ),
      ),
    );
  }
}
