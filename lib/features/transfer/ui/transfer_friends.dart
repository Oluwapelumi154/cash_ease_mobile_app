import 'package:cash_ease_mobile_app/components/custom_appbar.dart';
import 'package:cash_ease_mobile_app/components/input_amount.dart';
import 'package:cash_ease_mobile_app/components/text_area.dart';
import 'package:cash_ease_mobile_app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class TransferToFriends extends StatefulWidget {
  const TransferToFriends({super.key});

  @override
  State<TransferToFriends> createState() => _TransferToFriendsState();
}

class _TransferToFriendsState extends State<TransferToFriends> {
  final TextEditingController _controller = TextEditingController(text: '0');

  static final nairaFormat = NumberFormat.currency(
    locale: 'en_NG',
    symbol: '₦',
    decimalDigits: 0,
  );

  @override
  void initState() {
    super.initState();
    _controller.addListener(_formatInput);
  }

  int _amount = 0;

  void _formatInput() {
    String text = _controller.text.replaceAll(RegExp(r'[^0-9]'), '');
    final number = text.isEmpty ? 0 : int.parse(text);
    final formatted = number == 0 ? '' : nairaFormat.format(number);

    if (_controller.text != formatted) {
      _controller.value = TextEditingValue(
        text: formatted,
        selection: TextSelection.collapsed(offset: formatted.length),
      );
    }
    setState(() {
      _amount = number;
    });
  }

  int walletBalance = 200000;

  bool isWithdrawable() => _amount > 0 && _amount < walletBalance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(158),
            child: CustomAppBar(
              label: "Transfer To Friends",
              balanceIsVisible: true,
              amount: nairaFormat.format(walletBalance),
            )),
        body: Stack(
          children: [
            Positioned(
                bottom: 0,
                child: Container(
                  padding:
                      EdgeInsets.only(right: 18, left: 18, top: 20, bottom: 35),
                  height: 630,
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
                      Center(
                          child: Container(
                        height: 5.8,
                        width: 90,
                        decoration: BoxDecoration(
                            color: AppColors.disabledColor,
                            borderRadius: BorderRadius.circular(10)),
                      )),
                      SizedBox(
                        height: 18,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: SizedBox(
                            height: 48,
                            child: TextFormField(
                              style: TextStyle(color: AppColors.black),
                              decoration: InputDecoration(
                                  hintText: "Input phone number",
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 7),
                                  border: UnderlineInputBorder(
                                      borderRadius: BorderRadius.zero,
                                      borderSide: BorderSide(
                                          color: AppColors.black, width: 0.8)),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColors.black, width: 0.8),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColors.black, width: 0.8),
                                  ),
                                  hintStyle: TextStyle(
                                      color: AppColors.grey,
                                      fontWeight: FontWeight.w500)),
                            ),
                          )),
                          SizedBox(width: 8),
                          SizedBox(
                            height: 45,
                            width: 45,
                            child: IconButton(
                                onPressed: () {
                                  context.push('/recipient');
                                },
                                style: IconButton.styleFrom(
                                    backgroundColor: AppColors.bottomNavBg),
                                icon: Image.asset(
                                    'assets/icons/contact_icon.png')),
                          ),
                        ],
                      ),
                      SizedBox(height: 45),
                      Center(
                        child: Column(
                          children: [
                            Text(
                              'Set Amount',
                              style: TextStyle(
                                  color: AppColors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            SizedBox(
                                height: 48,
                                child: AmountWidget(controller: _controller)),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                  text: "Notes",
                                  style: TextStyle(
                                    color: AppColors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17,
                                  ),
                                  children: [
                                    WidgetSpan(child: SizedBox(width: 8)),
                                    TextSpan(
                                        text: '(Optional)',
                                        style: TextStyle(
                                            color: AppColors.grey,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400))
                                  ]),
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            TextArea(),
                            Spacer(),
                            SizedBox(
                                height: 54,
                                width: double.infinity,
                                child: ElevatedButton(
                                    onPressed: () {
                                      if (!isWithdrawable()) return;
                                      context.push('/transfer_success');
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: isWithdrawable()
                                            ? AppColors.primary
                                            : AppColors.disabledColor),
                                    child: Text('Proceed to Transfer',
                                        style: TextStyle(
                                            color: AppColors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600)))),
                          ],
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ));
  }
}
