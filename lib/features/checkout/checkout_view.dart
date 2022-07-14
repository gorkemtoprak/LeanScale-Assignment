import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:lean_scale_case/features/checkout/widgets/restaurant_information_widget.dart';
import 'package:lean_scale_case/models/restaurant_food_model.dart';
import 'package:lean_scale_case/shared/custom_text_form_field.dart';

import '../../core/utils/constants.dart';
import '../../shared/custom_app_bar.dart';
import '../../shared/custom_elevated_button.dart';
import 'widgets/checkout_items_widget.dart';

class CheckoutView extends StatefulWidget {
  const CheckoutView({
    Key? key,
  }) : super(key: key);

  @override
  State<CheckoutView> createState() => _CheckoutViewState();
}

class _CheckoutViewState extends State<CheckoutView> {
  List<RestaurantFoods> listFoods = [];

  // Get foods from Hive
  void getFoods() async {
    final box = await Hive.openBox<RestaurantFoods>('rest_food');
    setState(() {
      listFoods = box.values.toList();
    });
  }

  @override
  void initState() {
    getFoods();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
          appBar: customAppBar('Checkout'),
          backgroundColor: Constants.white,
          body: ValueListenableBuilder(
            valueListenable:
                Hive.box<RestaurantFoods>('rest_food').listenable(),
            builder: (context, Box<RestaurantFoods> box, _) {
              listFoods = box.values.toList();
              return SingleChildScrollView(
                physics: const ClampingScrollPhysics(),
                child: Column(
                  children: [
                    const RestaurantsInformationRow(
                      imageUrl:
                          'https://cdn.getiryemek.com/restaurants/1598542132458_1125x522.jpeg',
                      restaurantName: 'KFC',
                      restaurantAddress:
                          '62 O Connell Street Upper, North City, Dublin',
                    ),
                    ListView.builder(
                      itemCount: listFoods.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      padding: customPadding(),
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CartItemsWidget(
                                title: listFoods[index].name,
                                price: '\$${listFoods[index].price}',
                              ),
                              IconButton(
                                onPressed: () {
                                  final box =
                                      Hive.box<RestaurantFoods>('rest_food');
                                  box.deleteAt(index);
                                  setState(() {
                                    listFoods.removeAt(index);
                                  });
                                },
                                icon: const Icon(
                                  Icons.remove_circle_outline_rounded,
                                  color: Constants.mainColor,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    Padding(
                      padding: customPadding(),
                      child: CustomTextFormField(
                        onSaved: (text) {
                          // Users' notes about their orders will be recorded here.
                          textEditingController.text = text;
                        },
                        hint: 'Please add notes here...',
                        textCapitalization: TextCapitalization.none,
                        formatter: false,
                        inputFormatters: const [],
                        obscureText: false,
                      ),
                    ),
                    Padding(
                      padding: customPadding(),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: CustomElevatedButton(
                          onTap: () {
                            final box = Hive.box<RestaurantFoods>('rest_food');
                            box.deleteAll(box.keys);
                            setState(() {
                              textEditingController.clear();
                              listFoods.clear();
                            });
                            Fluttertoast.showToast(
                              msg: 'Order Completed Succesfully',
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                              backgroundColor: Constants.mainColor,
                              textColor: Constants.white,
                              fontSize: 16.0,
                            );
                          },
                          height: 50,
                          width: screenWidth(context),
                          color: Constants.mainColor,
                          iconData: Icons.shopping_cart_checkout_rounded,
                          title: 'Complete Order',
                          titleColor: Constants.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 90),
                  ],
                ),
              );
            },
          )),
    );
  }
}
