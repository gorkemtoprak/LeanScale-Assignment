import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:lean_scale_case/models/user_model.dart';
import 'package:stacked/stacked.dart';

import '../../core/manager/network_manager.dart';

class ProfileViewModel extends BaseViewModel {
  List<UserModel> userList = [];

  void init() {
    Future.delayed(const Duration(seconds: 5));
    fetchUsers();
    notifyListeners();
  }

  fetchUsers() async {
    if (await checkInternet()) {
      userList = [];
      final response = await http.get(
        Uri.parse(
          'https://jsonplaceholder.typicode.com/users',
        ),
      );
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        if (data.isNotEmpty) {
          for (var newData in data) {
            Map<String, dynamic> map = newData;
            userList.add(UserModel.fromJson(map));
          }
          userList;
          notifyListeners();
        }
        return userList;
      } else {
        throw Exception('ERROR! Failure when load foods...');
      }
    } else {
      throw Exception('ERROR! Failure when load foods...');
    }
  }
}
