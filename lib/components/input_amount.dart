import 'package:cash_ease_mobile_app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AmountWidget extends StatelessWidget {
  final TextEditingController controller;

  const AmountWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly, // only digits allowed
      ],
      style: TextStyle(
          color: AppColors.black, fontSize: 38, fontWeight: FontWeight.w600),
      decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.white,
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          border: UnderlineInputBorder(borderSide: BorderSide.none),
          enabledBorder: UnderlineInputBorder(borderSide: BorderSide.none),
          focusedBorder: UnderlineInputBorder(borderSide: BorderSide.none)),
    );
  }
}
