import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final double? width;
  final double? height;
  final String? title;
  final Color? titleColor;
  final IconData? iconData;
  final Color? color;
  final void Function()? onTap;
  const CustomElevatedButton({
    Key? key,
    this.width,
    this.height,
    this.title,
    this.iconData,
    this.color,
    this.onTap,
    this.titleColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        primary: color,
        fixedSize: Size(width!, height!),
        elevation: 3,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData,
            color: titleColor,
          ),
          const SizedBox(width: 5),
          Text(
            title ?? '',
            style: TextStyle(
              // fontSize: 12,
              fontWeight: FontWeight.w700,
              color: titleColor,
            ),
          ),
        ],
      ),
    );
  }
}
