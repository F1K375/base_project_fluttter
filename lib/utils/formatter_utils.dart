import 'package:intl/intl.dart';

class FormatterUtils {
  static String convertToIdr(dynamic number, {int decimalDigit = 2, String symbol = 'Rp '}) {
    NumberFormat currencyFormatter = NumberFormat.currency(
      locale: 'id',
      symbol: symbol,
      decimalDigits: decimalDigit,
    );
    return currencyFormatter.format(number);
  }

  static String dateToMonth(String date) {
    DateTime dateNow = DateTime.parse(date);
    String dateFormat = DateFormat.MMMM().format(dateNow);
    return dateFormat;
  }

  static String serverToNewFormat(String date, {String pattern = 'dd MMM y'}) {
    DateTime dateNow = DateTime.parse(date);
    String dateFormat = DateFormat(pattern).format(dateNow);
    return dateFormat;
  }
}
