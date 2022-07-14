import 'package:hive/hive.dart';
import 'package:lean_scale_case/models/restaurant_food_model.dart';

class HiveManager {
  String boxName = 'food_box';

  Future<Box> openBox() async {
    Box box = await Hive.openBox<RestaurantFoods>(boxName);
    return box;
  }

  void addFood(Box box, RestaurantFoods model) async {
    await box.put(model.id, model);
  }

  List<RestaurantFoods> getFoods(Box box) {
    return box.values.toList().cast<RestaurantFoods>();
  }

  deleteFoods(Box box, RestaurantFoods model) async {
    await box.delete(model.id);
  }
}
