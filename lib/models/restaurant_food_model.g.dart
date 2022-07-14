// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_food_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RestaurantFoodsAdapter extends TypeAdapter<RestaurantFoods> {
  @override
  final int typeId = 2;

  @override
  RestaurantFoods read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RestaurantFoods(
      id: fields[0] as String?,
      img: fields[1] as String?,
      name: fields[2] as String?,
      dsc: fields[3] as String?,
      price: fields[4] as int?,
      rate: fields[5] as int?,
      country: fields[6] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, RestaurantFoods obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.img)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.dsc)
      ..writeByte(4)
      ..write(obj.price)
      ..writeByte(5)
      ..write(obj.rate)
      ..writeByte(6)
      ..write(obj.country);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RestaurantFoodsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
