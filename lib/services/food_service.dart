import 'package:dio/dio.dart';

class FoodService {
  Response? response;
  var dio = Dio();

  void fetchData() async {
    response =
        await dio.get('https://www.themealdb.com/api/json/v1/1/categories.php');
    print(response!.data.toString());
  }
}
