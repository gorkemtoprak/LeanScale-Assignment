import 'package:flutter/material.dart';

import '../../../core/utils/constants.dart';

class RestaurantsInformationRow extends StatelessWidget {
  final String? imageUrl;
  final String? restaurantName;
  final String? restaurantAddress;
  const RestaurantsInformationRow({
    Key? key,
    this.imageUrl,
    this.restaurantName,
    this.restaurantAddress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: Container(
        height: 75,
        width: 75,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Image.network(
          imageUrl ?? '',
          fit: BoxFit.fill,
        ),
      ),
      title: Text(
        restaurantName ?? '',
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      subtitle: Text(
        restaurantAddress ?? '',
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          color: Constants.warmGrey,
        ),
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.chevron_right_rounded,
          color: Colors.black,
        ),
      ),
    );
  }
}
