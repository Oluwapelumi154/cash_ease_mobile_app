import 'package:cash_ease_mobile_app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TransferSuccessful extends StatelessWidget {
  const TransferSuccessful({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: EdgeInsets.only(top: 38),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 38, bottom: 15),
                              child: SizedBox(
                                child: Column(
                                  children: [
                                    Text(
                                      'Transfer Successful',
                                      style: TextStyle(
                                          color: AppColors.green,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Your transaction was successful',
                                      style: TextStyle(
                                          color: AppColors.grey, fontSize: 17),
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Text('#2000',
                                        style: TextStyle(
                                            color: AppColors.black,
                                            fontSize: 40,
                                            fontWeight: FontWeight.w600)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Divider(
                            height: 4,
                            color: AppColors.disabledColor,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 20, left: 20, top: 7, bottom: 27),
                            child: SizedBox(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                      child: Column(
                                    children: [
                                      Text(
                                        'Send to',
                                        style: TextStyle(
                                            color: AppColors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CircleAvatar(
                                            radius: 24,
                                            backgroundImage: AssetImage(
                                                'assets/images/user_four.png'),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Orebayo Oluwapelumi',
                                                style: TextStyle(
                                                    color: AppColors.black,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              SizedBox(height: 3),
                                              Text(
                                                '+23770402573',
                                                style: TextStyle(
                                                    color: AppColors.grey),
                                              )
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  )),
                                  SizedBox(
                                    height: 22,
                                  ),
                                  Text(
                                    'Transaction Details',
                                    style: TextStyle(
                                        color: AppColors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Payment',
                                        style: TextStyle(
                                            color: AppColors.grey,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15),
                                      ),
                                      Text(
                                        '#2000',
                                        style: TextStyle(
                                            color: AppColors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 8),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Date',
                                        style: TextStyle(
                                            color: AppColors.grey,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15),
                                      ),
                                      Text(
                                        'June 12, 2023',
                                        style: TextStyle(
                                            color: AppColors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 8),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Time',
                                        style: TextStyle(
                                            color: AppColors.grey,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15),
                                      ),
                                      Text(
                                        '20:32',
                                        style: TextStyle(
                                            color: AppColors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 8),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Reference Number',
                                        style: TextStyle(
                                            color: AppColors.grey,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15),
                                      ),
                                      Text(
                                        'fjj79kfffee',
                                        style: TextStyle(
                                            color: AppColors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 8),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Fee',
                                        style: TextStyle(
                                            color: AppColors.grey,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15),
                                      ),
                                      Text(
                                        '200',
                                        style: TextStyle(
                                            color: AppColors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Total Payment',
                                        style: TextStyle(
                                            color: AppColors.primary,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18),
                                      ),
                                      Text('200000',
                                          style: TextStyle(
                                              color: AppColors.primary,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 22))
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                        top: -35,
                        left: 0,
                        right: 0,
                        child: Center(
                          child: Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                color: AppColors.white, shape: BoxShape.circle),
                            child:
                                Image.asset('assets/images/check-circle.png'),
                          ),
                        )),
                  ],
                ),
              ),
              Spacer(),
              SizedBox(
                height: 52,
                child: FilledButton(
                    onPressed: () {},
                    style: FilledButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        side:
                            BorderSide(color: AppColors.borderColor, width: 2)),
                    child: Text(
                      'Share',
                      style: TextStyle(
                          color: AppColors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                  height: 52,
                  child: FilledButton(
                      onPressed: () {
                        context.push('/');
                      },
                      style: FilledButton.styleFrom(
                          backgroundColor: AppColors.white),
                      child: Text('Back to home',
                          style: TextStyle(
                              color: AppColors.primary,
                              fontSize: 17,
                              fontWeight: FontWeight.w600))))
            ],
          ),
        ),
      ),
    );
  }
}
