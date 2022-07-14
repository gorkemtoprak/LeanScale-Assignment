import 'package:flutter/material.dart';
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
  // List<Map<String, dynamic>> _items = [];

  // @override
  // void initState() {
  //   super.initState();
  //   refreshItems();
  // }

  // void refreshItems() {
  //   final data = _foodBox.keys.map((key) {
  //     final value = _foodBox.get(key);
  //     return {
  //       'key': key,
  //       'name': value['name'],
  //       'price': value['price'],
  //     };
  //   }).toList();

  //   setState(() {
  //     _items = data.reversed.toList();
  //   });
  // }

  // Future<void> createItem(Map<String, dynamic> newItem) async {
  //   await _foodBox.add(newItem);
  //   refreshItems();
  // }

  // Map<String, dynamic> readItem(int key) {
  //   final item = _foodBox.get(key);
  //   return item;
  // }

  // Future<void> deleteItem(int itemKey) async {
  //   await _foodBox.delete(itemKey);
  //   refreshItems();

  //   ScaffoldMessenger.of(context).showSnackBar(
  //       const SnackBar(content: Text('An item has been deleted')));
  // }

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
            // widget.model!.addItems(widget.foods!);
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
