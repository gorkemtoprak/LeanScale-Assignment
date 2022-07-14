import 'dart:convert';

import 'package:lean_scale_case/models/restaurant_food_model.dart';
import 'package:http/http.dart' as http;
import 'package:stacked/stacked.dart';

import '../../core/manager/network_manager.dart';

class RestaurantsViewModel extends BaseViewModel {
  List<RestaurantFoods> foodList = [];
  List<RestaurantFoods> drinkList = [];

  List<Map<String, dynamic>> cart = [];

  void init() {
    Future.delayed(const Duration(seconds: 10));
    fetchRestaurantsProducts();
    fetchRestaurantsDrinks();
    notifyListeners();
  }

  addProduct(int index) {
    // cart.add(data.products[index]);
    // print(data.products[index]);
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

  fetchRestaurantsDrinks() async {
    if (await checkInternet()) {
      Future.delayed(const Duration(seconds: 10));
      drinkList = [];
      final response = await http.get(
        Uri.parse(
          'https://ig-food-menus.herokuapp.com/drinks',
        ),
      );
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        if (data.isNotEmpty) {
          for (var newData in data) {
            Map<String, dynamic> map = newData;
            drinkList.add(RestaurantFoods.fromJson(map));
          }
          drinkList;
          notifyListeners();
        }
        return drinkList;
      } else {
        throw Exception('ERROR! Failure when load foods...');
      }
    } else {
      throw Exception('ERROR! Failure when load foods...');
    }
  }
}
