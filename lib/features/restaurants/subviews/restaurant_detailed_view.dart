import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lean_scale_case/features/restaurants/restaurants_view_model.dart';
import 'package:lean_scale_case/features/restaurants/widgets/additional_information_widget.dart';
import 'package:lean_scale_case/shared/custom_empty_view.dart';
import 'package:stacked/stacked.dart';

import '../../../core/utils/constants.dart';
import '../../../shared/custom_headline.dart';
import '../widgets/products_widget.dart';

class RestaurantsDetailedView extends StatelessWidget {
  const RestaurantsDetailedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RestaurantsViewModel>.reactive(
      viewModelBuilder: () => RestaurantsViewModel(),
      onModelReady: (model) => model.init(),
      builder: (context, model, _) {
        return model.foodList.isEmpty
            ? const CustomEmptyView()
            : Scaffold(
                backgroundColor: Constants.white,
                body: SingleChildScrollView(
                  physics: const ClampingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Image.network(
                            'https://picsum.photos/200',
                            fit: BoxFit.cover,
                            height: screenHeight(context) / 3.5,
                            width: screenWidth(context),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 50, left: 10),
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: const BoxDecoration(
                                color: Constants.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                              child: IconButton(
                                onPressed: () {
                                  AutoRouter.of(context).pop();
                                },
                                icon: const Icon(
                                  Icons.chevron_left,
                                  color: Colors.black,
                                  size: 26,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: customPadding(),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const AdditionalInformationWidget(
                              restaurantName: 'Mc Donalds',
                              restaurantAdress:
                                  '62 O Connell Street Upper, North City, Dublin',
                              restaurantPhoneNumber: '353 1 872 4487',
                              rate: '4.3',
                              time: ' 35-45',
                              price: 'Min. \$${20}',
                              deliveryPrice: ' Delivery: \$${5.99}',
                            ),
                            const HeadlineWidget(
                              title: 'Most Preferred',
                            ),
                            ListView.builder(
                              itemCount: 2,
                              shrinkWrap: true,
                              padding:
                                  const EdgeInsets.only(top: 20, bottom: 20),
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (BuildContext context, int index) {
                                return ProductsListWidget(
                                  productTitle:
                                      model.foodList[index].name ?? '',
                                  productDetails:
                                      model.foodList[index].dsc ?? '',
                                  productPrice:
                                      model.foodList[index].price.toString(),
                                  productQuantity: '0',
                                  productImage: model.foodList[index].img ?? '',
                                  foods: model.foodList[index],
                                  model: model,
                                );
                              },
                            ),
                            const Divider(
                              thickness: 2,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const HeadlineWidget(
                              title: 'Fried-Chickens',
                            ),
                            ListView.builder(
                              itemCount: 4,
                              shrinkWrap: true,
                              padding:
                                  const EdgeInsets.only(top: 20, bottom: 20),
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (BuildContext context, int index) {
                                return ProductsListWidget(
                                  productTitle:
                                      model.foodList[index].name ?? '',
                                  productDetails:
                                      model.foodList[index].dsc ?? '',
                                  productPrice:
                                      model.foodList[index].price.toString(),
                                  productQuantity: '0',
                                  productImage: model.foodList[index].img ?? '',
                                  foods: model.foodList[index],
                                );
                              },
                            ),
                          ],
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
