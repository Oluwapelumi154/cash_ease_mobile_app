import 'package:cash_ease_mobile_app/components/custom_appbar.dart';
import 'package:cash_ease_mobile_app/theme/colors.dart';
import 'package:flutter/material.dart';

class SelectedRecipient extends StatelessWidget {
  const SelectedRecipient({super.key});

  static final List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: CustomAppBar(label: "Transfer To Friends")),
      body: Stack(
        children: [
          Positioned(
              bottom: 0,
              child: Container(
                height: 700,
                padding:
                    EdgeInsets.only(right: 15, left: 15, top: 25, bottom: 18),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: SizedBox(
                          height: 48,
                          child: TextFormField(
                            style: TextStyle(color: AppColors.black),
                            decoration: InputDecoration(
                                hintText: 'Search Phone Number',
                                hintStyle: TextStyle(color: AppColors.grey),
                                suffixIcon: Icon(
                                  Icons.search,
                                  size: 25,
                                ),
                                suffixIconColor: AppColors.grey,
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 15),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(45),
                                    borderSide: BorderSide(
                                        color: AppColors.grey, width: 0.6)),
                                fillColor: AppColors.white,
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(45),
                                    borderSide: BorderSide(
                                        color: AppColors.grey, width: 0.6)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(45),
                                    borderSide: BorderSide(
                                        color: AppColors.grey, width: 0.6))),
                          ),
                        )),
                        SizedBox(width: 10),
                        SizedBox(
                            height: 50,
                            width: 50,
                            child: IconButton(
                                onPressed: () {},
                                style: IconButton.styleFrom(
                                    backgroundColor: AppColors.bottomNavBg),
                                icon: Icon(Icons.add,
                                    weight: 10,
                                    size: 30,
                                    color: AppColors.primary))),
                      ],
                    ),
                    SizedBox(height: 23),
                    Text('All Contact',
                        style: TextStyle(
                            color: AppColors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w500)),
                    SizedBox(height: 20),
                    Expanded(
                      child: ListView.separated(
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage:
                                    AssetImage('assets/images/user_two.png'),
                              ),
                              SizedBox(width: 15),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Abdul Mustakim',
                                      style: TextStyle(
                                        color: AppColors.black,
                                        fontSize: 17,
                                      ),
                                    ),
                                    SizedBox(height: 3),
                                    Text(
                                      '+62345535433',
                                      style: TextStyle(color: AppColors.black),
                                    ),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () => print('hello'),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: AppColors.grey,
                                  size: 20,
                                ),
                              ),
                            ],
                          );
                        },
                        separatorBuilder: (context, index) =>
                            SizedBox(height: 15),
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
