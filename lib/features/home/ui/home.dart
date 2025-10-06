import 'package:cash_ease_mobile_app/components/custom_navbar.dart';
import 'package:cash_ease_mobile_app/theme/colors.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  static List<String> Names = [
    "Add New",
    "Pelumi",
    "Tunji",
    "Oluwaseyi",
    "Adetunji",
    "Tola",
    "Doe"
  ];

  static List<Map<String, dynamic>> transactions = [
    {"narration": "Transfer", "amount": 2000, "date": DateTime.now()},
    {"narration": "Top Up", "amount": 2000, "date": DateTime.now()},
    {"narration": "Internet", "amount": 2000, "date": DateTime.now()},
  ];

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  void selectTab(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: currentIndex,
        onTap: (index) {
          selectTab(index);
        },
      ),
      appBar: AppBar(
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 0),
          child: Image.asset(
            "assets/images/logo_new.png",
            width: 130,
          ),
        ),
        actions: [
          Container(
            height: 43,
            padding: const EdgeInsets.only(right: 12),
            child: TextButton.icon(
                onPressed: () {},
                icon: Image.asset('assets/images/award_star.png'),
                style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 12)),
                label: Text(
                  '1.972 Points',
                  style: TextStyle(
                      color: AppColors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                )),
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          color: AppColors.primary,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Positioned(
                  top: -200,
                  right: -100,
                  child: SizedBox(
                      width: 300,
                      child: Image.asset('assets/images/ellipse-two.png'))),
              Positioned(
                  top: -120,
                  left: -100,
                  child: SizedBox(
                    width: 400,
                    child: Image.asset(
                      'assets/images/ellipse-one.png',
                    ),
                  )),
              Positioned(
                  bottom: -120,
                  left: -100,
                  child: SizedBox(
                    width: 400,
                    child: Image.asset(
                      'assets/images/ellipse-one.png',
                    ),
                  )),
              Positioned(
                  bottom: -300,
                  right: -145,
                  child: SizedBox(
                      width: 400,
                      child: Image.asset('assets/images/ellipse-two.png'))),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  margin: EdgeInsets.only(top: 22),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          'Your Balance',
                          style: TextStyle(
                              color: AppColors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '#245666',
                            style: TextStyle(
                                color: AppColors.white,
                                fontSize: 50,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.visibility_off,
                                size: 30,
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                  bottom: 0,
                  child: Container(
                    padding: EdgeInsets.only(top: 50, right: 12, left: 12),
                    decoration: BoxDecoration(
                        color: AppColors.bottomNavBg,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    width: MediaQuery.of(context).size.width,
                    height: 450,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Send Again',
                                style: TextStyle(
                                    color: AppColors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600)),
                            TextButton.icon(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.symmetric(horizontal: 8)),
                              icon: Icon(
                                Icons.arrow_right_alt,
                                size: 16,
                                color: AppColors.green,
                              ),
                              iconAlignment: IconAlignment.end,
                              label: Text('See All',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: AppColors.green,
                                      fontWeight: FontWeight.w500)),
                            )
                          ],
                        ),
                        Container(
                          height: 98,
                          margin: EdgeInsets.only(top: 8),
                          color: Colors.transparent,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: Home.Names.length,
                            itemBuilder: (context, index) {
                              if (index == 0) {
                                return GestureDetector(
                                  onTap: () {
                                    print('Add New Contact');
                                  },
                                  child: Column(
                                    children: [
                                      DottedBorder(
                                        borderType: BorderType
                                            .Circle, // makes it circular
                                        dashPattern: [
                                          6,
                                          3
                                        ], // 6 = line length, 3 = space between
                                        color: AppColors.primary,
                                        strokeWidth: 2,
                                        child: Container(
                                          height: 55,
                                          width: 55,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.transparent,
                                          ),
                                          child: Icon(
                                            Icons.add,
                                            size: 30,
                                            color: AppColors.primary,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 6),
                                      Text(
                                        Home.Names[index],
                                        style: TextStyle(
                                            overflow: TextOverflow.ellipsis,
                                            fontSize: 16,
                                            color: AppColors.black),
                                      )
                                    ],
                                  ),
                                );
                              } else {
                                return Column(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.transparent,
                                      radius: 30,
                                      child: Image.asset(
                                          'assets/images/profile_image.png'),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      Home.Names[index],
                                      style: TextStyle(
                                          overflow: TextOverflow.ellipsis,
                                          fontSize: 16,
                                          color: AppColors.black),
                                    )
                                  ],
                                );
                              }
                            },
                            separatorBuilder: (context, index) =>
                                SizedBox(width: 10),
                          ),
                        ),
                        Container(
                          height: 230,
                          margin: EdgeInsets.only(top: 10),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Latest Transaction',
                                      style: TextStyle(
                                          color: AppColors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600)),
                                  TextButton.icon(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                        alignment: Alignment.center,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8)),
                                    icon: Icon(
                                      Icons.arrow_right_alt,
                                      size: 16,
                                      color: AppColors.green,
                                    ),
                                    iconAlignment: IconAlignment.end,
                                    label: Text('See All',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: AppColors.green,
                                            fontWeight: FontWeight.w500)),
                                  )
                                ],
                              ),
                              Expanded(
                                child: ListView.separated(
                                  scrollDirection: Axis.vertical,
                                  itemBuilder: (context, index) {
                                    final transaction =
                                        Home.transactions[index];
                                    return ListTile(
                                      contentPadding: EdgeInsets.zero,
                                      leading: Container(
                                        height: 43,
                                        width: 43,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0XFFF9F5FE)),
                                        child: Icon(
                                          Icons.reddit,
                                          color: AppColors.primary,
                                        ),
                                      ),
                                      title: Text(
                                        transaction['narration'],
                                        style: TextStyle(
                                            color: AppColors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 17),
                                      ),
                                      subtitle: Text(
                                        transaction['date'].toString(),
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: AppColors.grey),
                                      ),
                                      trailing: Text(
                                        transaction['amount'].toString(),
                                        style: TextStyle(
                                          fontSize: 16.5,
                                          color: AppColors.green,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    );
                                  },
                                  separatorBuilder: (context, index) =>
                                      SizedBox(height: 5),
                                  itemCount: Home.transactions.length,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
              Positioned(
                  top: 145,
                  right: 0,
                  left: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(15)),
                      height: 90,
                      width: MediaQuery.of(context).size.width,
                      child: GridView.count(
                        primary: false,
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 5),
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        crossAxisCount: 4,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(17)),
                            child: GestureDetector(
                              onTap: () => context.push('/transfer'),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/icons/transfer_icon.png',
                                    height: 28,
                                  ),
                                  SizedBox(height: 8),
                                  Text('Transfer',
                                      style: TextStyle(
                                          color: AppColors.black, fontSize: 15))
                                ],
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(17)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/icons/top-wallet.png',
                                  height: 28,
                                ),
                                SizedBox(height: 8),
                                Text('Top Up',
                                    style: TextStyle(
                                        color: AppColors.black, fontSize: 15))
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(17)),
                            child: GestureDetector(
                              onTap: () {
                                print("hello");
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/icons/withdraw.png',
                                    height: 28,
                                  ),
                                  SizedBox(height: 8),
                                  Text('Withdraw',
                                      style: TextStyle(
                                          color: AppColors.black, fontSize: 14))
                                ],
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(17)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/icons/icon-more.png',
                                  height: 28,
                                ),
                                SizedBox(height: 8),
                                Text('Transfer',
                                    style: TextStyle(
                                        color: AppColors.black, fontSize: 15))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
