import 'package:flutter/material.dart';

import '../core/utils/constants.dart';

class CustomCategoryContainer extends StatelessWidget {
  final String? image;
  final String? title;
  final Gradient? gradient;
  const CustomCategoryContainer({
    Key? key,
    this.image,
    this.title,
    this.gradient,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
        gradient: gradient,
        border: Border.all(
          color: Constants.warmGrey,
          width: 2,
        ),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
            child: Image.network(
              image!,
              fit: BoxFit.fill,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                title!,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
