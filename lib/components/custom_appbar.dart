import 'package:cash_ease_mobile_app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  final String label;
  final String? amount;
  final bool balanceIsVisible;
  const CustomAppBar(
      {super.key,
      required this.label,
      this.amount,
      this.balanceIsVisible = false});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.primary,
          boxShadow: [
            BoxShadow(color: AppColors.primary.withOpacity(0.3), blurRadius: 4),
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 3,
              child: Container(
                child: Image.asset(
                  "assets/images/ellipse-three.png",
                  height: 290,
                  width: 600,
                ),
              ),
            ),
            Positioned(
              right: 18,
              top: 40,
              child: Container(
                child: Image.asset(
                  "assets/images/ellipse-one.png",
                  height: 300,
                  width: 600,
                ),
              ),
            ),
            // Ba
            //ck button - left aligned

            // Title - centered

            Positioned(
                top: 17,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () => context.pop(),
                          child: const Icon(Icons.arrow_back_ios,
                              color: AppColors.white),
                        ),
                        Text(
                          label,
                          style: TextStyle(
                            fontSize: 19,
                            color: AppColors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Icon(Icons.help_rounded, color: AppColors.white)
                      ],
                    ),
                  ),
                )),

            if (balanceIsVisible)
              Positioned(
                top: 75,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Your Balance',
                              style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              amount ?? '',
                              style: TextStyle(
                                  fontSize: 28, fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                        TextButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.wallet_sharp),
                            style: TextButton.styleFrom(
                                backgroundColor: AppColors.white),
                            label: Text(
                              'Top Up',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.primary,
                                  fontWeight: FontWeight.w600),
                            ))
                      ],
                    ),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
