import 'package:hive/hive.dart';

part 'food_model.g.dart';

@HiveType(typeId: 0)
class FoodModel {
  @HiveField(0)
  final String? idCategory;
  @HiveField(1)
  final String? strCategory;
  @HiveField(2)
  final String? strCategoryThumb;
  @HiveField(3)
  final String? strCategoryDescription;
  FoodModel({
    this.idCategory,
    this.strCategory,
    this.strCategoryThumb,
    this.strCategoryDescription,
  });

  factory FoodModel.fromJson(Map<String, dynamic> json) => FoodModel(
        idCategory: json['idCategory'],
        strCategory: json['strCategory'],
        strCategoryThumb: json['strCategoryThumb'],
        strCategoryDescription: json['strCategoryDescription'],
      );

  Map<String, dynamic> toJson() => {
        'idCategory': idCategory,
        'strCategory': strCategory,
        'strCategoryThumb': strCategoryThumb,
        'strCategoryDescription': strCategoryDescription,
      };
}
