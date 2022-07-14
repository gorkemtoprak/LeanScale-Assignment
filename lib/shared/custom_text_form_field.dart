import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../core/utils/constants.dart';

class CustomTextFormField extends StatelessWidget {
  final void Function(String)? onSaved;
  final bool? obscureText;
  final FormFieldValidator<String>? validator;
  final TextCapitalization? textCapitalization;
  final String? hint;
  final TextInputType? textInputType;
  final bool? formatter;
  final List<TextInputFormatter>? inputFormatters;

  const CustomTextFormField({
    Key? key,
    this.onSaved,
    this.obscureText,
    this.validator,
    this.textCapitalization,
    this.hint,
    this.textInputType,
    this.formatter,
    this.inputFormatters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      obscureText: obscureText!,
      onChanged: onSaved,
      textCapitalization: textCapitalization!,
      keyboardType: textInputType,
      inputFormatters: formatter! ? inputFormatters : [],
      style: const TextStyle(
        color: Constants.blackThree,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(
          color: Constants.greyishThree,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Constants.warmGrey,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Constants.warmGrey,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        filled: true,
        fillColor: Constants.white,
        errorStyle: const TextStyle(
          fontSize: 12,
          color: Constants.mainColor,
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
