import 'package:hive/hive.dart';

part 'category_model.g.dart';

@HiveType(typeId: 0)
class CategoryModel {
  @HiveField(0)
  final String? name;
  @HiveField(1)
  final String? image;

  CategoryModel(
    this.name,
    this.image,
  );

  // factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
  //       name: json['name'],
  //       image: json['image'],
  //     );

  // Map<String, dynamic> toJson() => {
  //       'name': name,
  //       'image': image,
  //     };
}
