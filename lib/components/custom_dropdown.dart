import 'package:cash_ease_mobile_app/theme/colors.dart';
import 'package:flutter/material.dart';

class DropdownWidget extends StatefulWidget {
  const DropdownWidget({super.key});
  static final List<String> banks = [
    'Access Bank',
    "Stanbic Bank",
    "Wema Bank",
    "Keystone Bank",
    "Standard Chatered"
  ];

  @override
  State<DropdownWidget> createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  String selectedValue = "Access Bank";

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 53,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: AppColors.grey,
            width: 0.73,
          )),
      child: DropdownButton<String>(
        value: selectedValue,
        dropdownColor: AppColors.white,
        padding: EdgeInsets.symmetric(horizontal: 14),
        isExpanded: true,
        items: DropdownWidget.banks
            .map((bank) => DropdownMenuItem<String>(
                  value: bank,
                  child: Text(
                    bank,
                    style: TextStyle(
                        color: AppColors.black, fontWeight: FontWeight.w400),
                  ),
                ))
            .toList(),
        onChanged: (String? newValue) {
          setState(() {
            selectedValue = newValue!;
          });
          // Handle value change here
        },
      ),
    );
  }
}
