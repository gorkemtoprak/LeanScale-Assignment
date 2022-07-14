import 'package:hive/hive.dart';

part 'restaurant_food_model.g.dart';

@HiveType(typeId: 2)
class RestaurantFoods {
  @HiveField(0)
  final String? id;
  @HiveField(1)
  final String? img;
  @HiveField(2)
  final String? name;
  @HiveField(3)
  final String? dsc;
  @HiveField(4)
  final int? price;
  @HiveField(5)
  final int? rate;
  @HiveField(6)
  final String? country;

  RestaurantFoods(
      {this.id,
      this.img,
      this.name,
      this.dsc,
      this.price,
      this.rate,
      this.country});

  factory RestaurantFoods.fromJson(Map<String, dynamic> json) =>
      RestaurantFoods(
        id: json['id'],
        img: json['img'],
        name: json['name'],
        dsc: json['dsc'],
        price: json['price'],
        rate: json['rate'],
        country: json['country'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'img': img,
        'name': name,
        'dsc': dsc,
        'price': price,
        'rate': rate,
        'country': country,
      };
}
