import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hive/hive.dart';
import 'package:lean_scale_case/features/checkout/widgets/restaurant_information_widget.dart';
import 'package:lean_scale_case/models/restaurant_food_model.dart';
import 'package:lean_scale_case/shared/custom_text_form_field.dart';

import 'dart:collection';
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

  void getFoods() async {
    final box = await Hive.openBox<RestaurantFoods>('rest_food');
    setState(() {
      listFoods = box.values.toList();
    });
  }

  UnmodifiableListView<RestaurantFoods> get listofFood =>
      UnmodifiableListView(listFoods);

  @override
  void initState() {
    getFoods();
    super.initState();
  }

  // I just want to calculate the total price..
  int _totalPrice() {
    int total = 0;
    listFoods.forEach((RestaurantFoods restaurantFoods) =>
        {total = restaurantFoods.price!.toInt()});
    return total;
  }

  int get totalPrice => _totalPrice();

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();
    return Scaffold(
      appBar: customAppBar('Checkout'),
      backgroundColor: Constants.white,
      body: Column(
        children: [
          const RestaurantsInformationRow(
            imageUrl:
                'https://cdn.getiryemek.com/restaurants/1598542132458_1125x522.jpeg',
            restaurantName: 'KFC',
            restaurantAddress: '62 O Connell Street Upper, North City, Dublin',
          ),
          ListView.builder(
            itemCount: listFoods.length,
            shrinkWrap: true,
            padding: customPadding(),
            itemBuilder: (BuildContext context, int index) {
              RestaurantFoods getRestFoods = listFoods[index];
              var name = getRestFoods.name;
              var price = getRestFoods.price;
              return Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: Slidable(
                  endActionPane: ActionPane(
                    motion: const ScrollMotion(),
                    dismissible: DismissiblePane(onDismissed: () {}),
                    children: [
                      SlidableAction(
                        onPressed: (context) {
                          final box = Hive.box<RestaurantFoods>('rest_food');
                          box.deleteAt(index);
                          setState(() {
                            listFoods.removeAt(index);
                          });
                        },
                        backgroundColor: Constants.red,
                        foregroundColor: Constants.white,
                        icon: Icons.delete,
                        label: 'Delete',
                      ),
                    ],
                  ),
                  child: CartItemsWidget(
                    title: name,
                    price: '\$$price',
                  ),
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
          const Spacer(),
          Padding(
            padding: customPadding(),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CustomElevatedButton(
                onTap: () {
                  final box = Hive.box<RestaurantFoods>('rest_food');
                  box.deleteAll(box.keys);
                  setState(() {
                    listFoods.clear();
                  });
                  textEditingController.clear();
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
          const Spacer(),
        ],
      ),
    );
  }
}
