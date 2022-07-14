import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hive/hive.dart';
import 'package:lean_scale_case/features/restaurants/restaurants_view_model.dart';
import 'package:lean_scale_case/models/restaurant_food_model.dart';

import '../core/utils/constants.dart';

class QuantityWidget extends StatefulWidget {
  final int? quantity;
  final String? price;
  final bool? showPrice;
  final RestaurantsViewModel? model;
  final RestaurantFoods? foods;
  const QuantityWidget({
    Key? key,
    this.quantity = 0,
    this.price,
    this.showPrice,
    this.model,
    this.foods,
  }) : super(key: key);

  @override
  State<QuantityWidget> createState() => _QuantityWidgetState();
}

class _QuantityWidgetState extends State<QuantityWidget> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        widget.showPrice!
            ? Text(
                '\$${widget.price}',
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              )
            : const SizedBox(),
        IconButton(
          onPressed: () {
            setState(() {
              if (counter > widget.quantity!) {
                counter--;
              }
            });
          },
          icon: const Icon(
            Icons.remove_circle_outline_rounded,
            color: Constants.mainColor,
          ),
        ),
        Text(
          '$counter',
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        IconButton(
          onPressed: () async {
            setState(() {
              counter++;
            });
            var box = await Hive.openBox<RestaurantFoods>('rest_food');
            box.add(widget.foods!);
            Fluttertoast.showToast(
              msg: 'Item Added to Cart',
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              backgroundColor: Constants.mainColor,
              textColor: Constants.white,
              fontSize: 16.0,
            );
          },
          icon: const Icon(
            Icons.add_circle_outline_rounded,
            color: Constants.mainColor,
          ),
        ),
      ],
    );
  }
}
