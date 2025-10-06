import 'package:cash_ease_mobile_app/components/custom_appbar.dart';
import 'package:cash_ease_mobile_app/components/custom_dropdown.dart';
import 'package:cash_ease_mobile_app/components/input_amount.dart';
import 'package:cash_ease_mobile_app/components/text_area.dart';
import 'package:cash_ease_mobile_app/theme/colors.dart';
import 'package:cash_ease_mobile_app/utils/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

class TransferToBankRecipient extends StatefulWidget {
  const TransferToBankRecipient({super.key});

  @override
  State<TransferToBankRecipient> createState() =>
      _TransferToBankRecipientState();
}

class _TransferToBankRecipientState extends State<TransferToBankRecipient> {
  final TextEditingController _controller = TextEditingController(text: "0");
  @override
  void initState() {
    super.initState();
    _controller.addListener(_formatInput);
  }

  int _amount = 0;

  void _formatInput() {
    String text = _controller.text.replaceAll(RegExp(r'[^0-9]'), '');
    final number = text.isEmpty ? 0 : int.parse(text);
    final formatted = number == 0 ? '' : Helper.nairaFormat.format(number);

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
          preferredSize: Size.fromHeight(160),
          child: CustomAppBar(
            label: "Transfer to Bank",
            balanceIsVisible: true,
            amount: Helper.nairaFormat.format(200000),
          )),
      body: Stack(
        children: [
          Positioned(
              bottom: 0,
              child: Container(
                height: 630,
                padding:
                    EdgeInsets.only(left: 18, right: 18, bottom: 30, top: 15),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Center(
                      child: SizedBox(
                        height: 5,
                        child: Container(
                          width: 120,
                          height: 10,
                          decoration: BoxDecoration(
                              color: AppColors.disabledColor,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    DropdownWidget(),
                    SizedBox(
                      height: 28,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            'Set Amount',
                            style: TextStyle(
                                color: AppColors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        SizedBox(
                            height: 48,
                            child: AmountWidget(controller: _controller)),
                        SizedBox(
                          height: 45,
                        ),
                        RichText(
                            text: TextSpan(
                                text: 'Notes',
                                style: TextStyle(
                                    color: AppColors.black,
                                    fontWeight: FontWeight.w500),
                                children: [
                              TextSpan(
                                  text: "(Optional)",
                                  style: TextStyle(
                                      color: AppColors.grey,
                                      fontWeight: FontWeight.bold))
                            ])),
                        SizedBox(
                          height: 10,
                        ),
                        TextArea(),
                      ],
                    ),
                    Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(
                            height: 52,
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
                                        fontSize: 16.5,
                                        fontWeight: FontWeight.w600))))
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
