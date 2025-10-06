import 'package:cash_ease_mobile_app/theme/colors.dart';
import 'package:flutter/material.dart';

class TextArea extends StatelessWidget {
  const TextArea({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 5,
      minLines: 3,
      keyboardType: TextInputType.multiline,
      style: TextStyle(color: AppColors.grey),
      decoration: InputDecoration(
          filled: true,
          fillColor: Color(0XFFF7F7F7),
          hintText: "Write your notes here",
          hintStyle: TextStyle(color: AppColors.grey),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(color: AppColors.grey, width: 0.3)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(color: AppColors.grey, width: 0.3)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(color: AppColors.grey, width: 0.3))),
    );
  }
}
