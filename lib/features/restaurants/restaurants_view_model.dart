import 'dart:convert';

import 'package:lean_scale_case/models/restaurant_food_model.dart';
import 'package:http/http.dart' as http;
import 'package:stacked/stacked.dart';

import '../../core/manager/network_manager.dart';

class RestaurantsViewModel extends BaseViewModel {
  List<RestaurantFoods> foodList = [];

  List<RestaurantFoods> cart = [];
  List<Map<String, dynamic>> items = [];

  void init() {
    Future.delayed(const Duration(seconds: 10));
    fetchRestaurantsProducts();
    notifyListeners();
  }

  Map productQuantity(products) {
    var quantity = {};
    products.forEach((product) {
      if (!quantity.containsKey(product)) {
        quantity[product] = 1;
      } else {
        quantity[product] += 1;
      }
    });
    return quantity;
  }

  fetchRestaurantsProducts() async {
    if (await checkInternet()) {
      foodList = [];
      final response = await http.get(
        Uri.parse(
          'https://ig-food-menus.herokuapp.com/fried-chicken',
        ),
      );
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        if (data.isNotEmpty) {
          for (var newData in data) {
            Map<String, dynamic> map = newData;
            foodList.add(RestaurantFoods.fromJson(map));
          }
          foodList;
          notifyListeners();
        }
        return foodList;
      } else {
        throw Exception('ERROR! Failure when load foods...');
      }
    } else {
      throw Exception('ERROR! Failure when load foods...');
    }
  }
}
