import 'package:auto_route/auto_route.dart';
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

AppBar customAppBarWithLeading(String title, BuildContext context) {
  return AppBar(
    elevation: 0,
    automaticallyImplyLeading: false,
    backgroundColor: Constants.white,
    leading: IconButton(
      onPressed: () {
        AutoRouter.of(context).pop();
      },
      icon: const Icon(
        Icons.chevron_left,
        size: 26,
        color: Constants.black,
      ),
    ),
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
