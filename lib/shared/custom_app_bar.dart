import 'package:flutter/material.dart';

import '../core/utils/constants.dart';

AppBar customAppBar(String title) {
  return AppBar(
    elevation: 0,
    automaticallyImplyLeading: false,
    backgroundColor: Constants.white,
    title: Text(
      title,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Constants.black,
      ),
    ),
  );
}
