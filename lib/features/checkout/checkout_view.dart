import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hive/hive.dart';
import 'package:lean_scale_case/features/checkout/widgets/restaurant_information_widget.dart';
import 'package:lean_scale_case/models/restaurant_food_model.dart';

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

  @override
  void initState() {
    getFoods();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('Checkout'),
      backgroundColor: Constants.white,
      body: Column(
        children: [
          const RestaurantsInformationRow(
            imageUrl: 'https://picsum.photos/200/300',
            restaurantName: 'Mc Donalds',
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
          const Spacer(
            flex: 2,
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
                title: 'Siparişi Tamamla',
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
