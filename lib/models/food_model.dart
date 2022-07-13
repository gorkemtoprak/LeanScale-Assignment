import 'dart:convert';

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

  Map<String, dynamic> toMap() {
    return {
      'idCategory': idCategory,
      'strCategory': strCategory,
      'strCategoryThumb': strCategoryThumb,
      'strCategoryDescription': strCategoryDescription,
    };
  }

  factory FoodModel.fromMap(Map<String, dynamic> map) {
    return FoodModel(
      idCategory: map['idCategory'],
      strCategory: map['strCategory'],
      strCategoryThumb: map['strCategoryThumb'],
      strCategoryDescription: map['strCategoryDescription'],
    );
  }

  String toJson() => json.encode(toMap());

  factory FoodModel.fromJson(String source) =>
      FoodModel.fromMap(json.decode(source));
}
