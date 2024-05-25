

import 'package:intl/intl.dart';

class EFormatter {
 
 //format date
 static String formatDate(DateTime date) {
    return DateFormat('dd/MM/yyyy').format(date);
  }

 static String formatMonthDate(DateTime date) {
  return DateFormat('dd MMMM yyyy').format(date);
}
  //format time
  String formatTime(DateTime date) {
    return DateFormat('hh:mm a').format(date);
  }

  //format date and time
  String formatDateTime(DateTime date) {
    return DateFormat('dd/MM/yyyy hh:mm a').format(date);
  }

  //format currency
  String formatCurrency(double amount) {
    return NumberFormat.currency(
      locale: 'en_IN',
      symbol: '₹',
    ).format(amount);
  }

  //format number
  String formatNumber(double number) {
    return NumberFormat.decimalPattern().format(number);
  }

  //format percentage
  String formatPercentage(double percentage) {
    return NumberFormat.decimalPercentPattern().format(percentage);
  }

  //format phone number
  String formatPhoneNumber(String phoneNumber) {
    return phoneNumber.length == 10
        ? phoneNumber.replaceRange(0, 3, '(${phoneNumber.substring(0, 3)}) ')
        : phoneNumber;
  }

  //format email
  String formatEmail(String email) {
    return email.length > 20 ? '${email.substring(0, 20)}...' : email;
  }

  //format text
  String formatText(String text) {
    return text.length > 20 ? '${text.substring(0, 20)}...' : text;
  }

  //format text
  String formatTextWithEllipsis(String text, int length) {
    return text.length > length ? '${text.substring(0, length)}...' : text;
  }

  //format text
  String formatTextWithEllipsisAndLength(String text, int length) {
    return text.length > length ? '${text.substring(0, length)}...' : text;
  }

  //format text
  String formatTextWithEllipsisAndLengthAndStart(String text, int length) {
    return text.length > length
        ? '...${text.substring(text.length - length, text.length)}'
        : text;
  }

  //format text
  String formatTextWithEllipsisAndLengthAndStartAndEnd(
      String text, int length) {
    return text.length > length
        ? '...${text.substring(text.length - length, text.length)}...'
        : text;}





}