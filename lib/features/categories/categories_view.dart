import 'package:flutter/material.dart';
import 'package:lean_scale_case/core/utils/constants.dart';
import 'package:lean_scale_case/shared/custom_app_bar.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('Categories'),
      backgroundColor: Constants.white,
      body: ListView.builder(
        itemCount: 4,
        padding: customPadding(),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(15),
              ),
              child: Image.network(
                'https://indirimkuponkod.com/wp-content/uploads/2022/01/yemek-sepeti-indirim-kodlari.png',
                fit: BoxFit.fill,
              ),
            ),
          );
        },
      ),
    );
  }
}
