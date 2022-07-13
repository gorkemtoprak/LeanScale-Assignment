import 'package:hive/hive.dart';
import 'package:lean_scale_case/models/food_model.dart';

class HiveManager {
  String boxName = 'foods';

  Future<Box> openBox() async {
    Box box = await Hive.openBox<FoodModel>(boxName);
    return box;
  }

  addMovie(Box box, FoodModel model) async {
    await box.put(model.idCategory, model);
  }

  List<FoodModel> getMovies(Box box) {
    return box.values.toList().cast<FoodModel>();
  }

  updateMovie(Box box, FoodModel model) async {
    await box.put(model.idCategory, model);
  }

  deleteMovie(Box box, FoodModel model) async {
    await box.delete(model.idCategory);
  }

  deleteAllMovies(Box box) async {
    await box.clear();
  }
}
