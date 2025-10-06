import 'package:cash_ease_mobile_app/theme/colors.dart';
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  final List<Map<String, dynamic>> items = [
    {'icon': Icons.home, 'label': 'Home'},
    {'icon': Icons.analytics, 'label': 'Report'},
    {'icon': Icons.qr_code_2, 'label': ''}, // Center button
    {'icon': Icons.history, 'label': 'History'},
    {'icon': Icons.account_box, 'label': 'Profile'},
  ];
  CustomBottomNavBar(
      {super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      alignment: Alignment.center,
      padding: EdgeInsets.only(bottom: 17, right: 5, left: 5),
      decoration: BoxDecoration(
          color: AppColors.white,
          // boxShadow: [
          //   BoxShadow(
          //       color: AppColors.grey.withOpacity(0.3),
          //       blurRadius: 1,
          //       offset: Offset(0, -1),
          //       spreadRadius: 0.3)
          // ],
          shape: BoxShape.rectangle,
          border: Border(top: BorderSide(color: AppColors.grey, width: 0.5))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: List.generate(items.length, (index) {
          final item = items[index];
          final bool isSelected = currentIndex == index;
          if (index != 2) {
            return GestureDetector(
              onTap: () => onTap(index),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 27,
                    height: 27,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        shape: BoxShape.rectangle,
                        color: isSelected
                            ? AppColors.deepPrimary
                            : Colors.transparent),
                    child: Icon(item['icon'],
                        size: 23,
                        color: isSelected ? AppColors.white : AppColors.grey),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    item['label'],
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: isSelected ? AppColors.primary : AppColors.grey),
                  )
                ],
              ),
            );
          } else {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 52,
                  height: 52,
                  decoration: BoxDecoration(
                      color: AppColors.primary, shape: BoxShape.circle),
                  child: Icon(
                    items[2]['icon'],
                    color: AppColors.white,
                    size: 35,
                  ),
                )
              ],
            );
          }
        }),
      ),
    );
  }
}
