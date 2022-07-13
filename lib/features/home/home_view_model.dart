import 'dart:async';
import 'dart:convert';

import 'package:lean_scale_case/core/manager/network_manager.dart';
import 'package:lean_scale_case/models/food_model.dart';
import 'package:http/http.dart' as http;
import 'package:stacked/stacked.dart';

import '../../models/category_model.dart';

class HomeViewModel extends BaseViewModel {
  List<FoodModel> foodList = [];
  List<CategoryModel> categoryList = [];
  void init() {
    fetchFoodCategories();
  }

  Future<List<FoodModel>>? fetchFoodCategories() async {
    if (await checkInternet()) {
      foodList = [];
      final response = await http.get(
        Uri.parse(
          'https://www.themealdb.com/api/json/v1/1/categories.php',
        ),
      );
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        if (data.isNotEmpty) {
          for (var newData in data['categories']) {
            Map<String, dynamic> map = newData;
            foodList.add(FoodModel.fromJson(map));
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

  filterCategory(String category) async {
    if (await checkInternet()) {
      final response = await http.get(
        Uri.parse(
          'https://www.themealdb.com/api/json/v1/1/filter.php?c={$category}',
        ),
      );
      var data = jsonDecode(response.body);
      for (var mealData in data['meals']) {
        CategoryModel model = CategoryModel(
          mealData['strMeal'],
          mealData['strMealThumb'],
        );
        categoryList.add(model);
        notifyListeners();
      }
      return categoryList;
    } else {
      throw Exception('ERROR! Failure when load foods...');
    }
  }
}
