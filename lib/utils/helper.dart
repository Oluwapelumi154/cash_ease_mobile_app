import 'package:intl/intl.dart';

class Helper {
  static final nairaFormat = NumberFormat.currency(
    locale: 'en_NG',
    symbol: '₦',
    decimalDigits: 0,
  );
}
