import 'package:cash_ease_mobile_app/components/custom_appbar.dart';
import 'package:cash_ease_mobile_app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Transfer extends StatelessWidget {
  const Transfer({super.key});

  static final List<Map<String, dynamic>> transferList = [
    {
      "profilePic": "assets/images/user_three.png",
      "date": DateTime.now(),
      "name": "Jane Doe",
      "amount": 250.00
    },
    {
      "profilePic": "assets/images/user_two.png",
      "date": DateTime.now(),
      "name": "John Smith",
      "amount": 100.00
    },
    {
      "profilePic": "assets/images/user_two.png",
      "date": DateTime.now(),
      "name": "John Smith",
      "amount": 100.00
    },
    {
      "profilePic": "assets/images/user_two.png",
      "date": DateTime.now(),
      "name": "John Smith",
      "amount": 100.00
    },
    {
      "profilePic": "assets/images/user_two.png",
      "date": DateTime.now(),
      "name": "John Smith",
      "amount": 100.00
    },
    {
      "profilePic": "assets/images/user_two.png",
      "date": DateTime.now(),
      "name": "John Smith",
      "amount": 100.00
    },
    {
      "profilePic": "assets/images/user_two.png",
      "date": DateTime.now(),
      "name": "John Smith",
      "amount": 100.00
    },
    {
      "profilePic": "assets/images/user_two.png",
      "date": DateTime.now(),
      "name": "John Smith",
      "amount": 100.00
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90),
        child: CustomAppBar(
          label: "Transfer",
        ),
      ),
      body: Container(
        width: double.infinity,
        color: AppColors.primary,
        child: Stack(
          children: [
            Positioned(
                bottom: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 700,
                  padding:
                      EdgeInsets.only(top: 30, right: 15, left: 15, bottom: 20),
                  // height: 720,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40),
                          topLeft: Radius.circular(40)),
                      color: AppColors.white,
                      shape: BoxShape.rectangle),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GridView.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                        padding: EdgeInsets.all(0),
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        childAspectRatio: 1.5,
                        children: [
                          GestureDetector(
                            onTap: () => context.push('/transfer_friends'),
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColors.bottomNavBg,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/icons/icon-friends.png'),
                                  SizedBox(height: 10),
                                  Text(
                                    "Transfer to friends",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        color: AppColors.black),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              context.push('/transfer_bank');
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColors.bottomNavBg,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/icons/icon-home.png'),
                                  SizedBox(height: 10),
                                  Text(
                                    'Transfer to bank',
                                    style: TextStyle(
                                        color: AppColors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      Text(
                        'Latest Transfer',
                        style: TextStyle(
                            color: AppColors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 450,
                        child: ListView.separated(
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          // physics: NeverScrollableScrollPhysics(),
                          itemCount: transferList.length,
                          itemBuilder: (context, index) {
                            final transfer = transferList[index];
                            return Row(
                              children: [
                                CircleAvatar(
                                  radius: 28,
                                  backgroundImage:
                                      AssetImage(transfer["profilePic"]),
                                ),
                                SizedBox(width: 16),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        transfer["name"],
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                          color: AppColors.black,
                                        ),
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        "\$${transfer["amount"].toStringAsFixed(2)}",
                                        style: TextStyle(
                                          color: AppColors.primary,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  "${transfer["date"].hour.toString().padLeft(2, '0')}:${transfer["date"].minute.toString().padLeft(2, '0')}",
                                  style: TextStyle(
                                    color: AppColors.grey,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            );
                          },
                          separatorBuilder: (context, index) =>
                              SizedBox(height: 16),
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
