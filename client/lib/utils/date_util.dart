import 'package:intl/intl.dart';

class Utils {
  static String toDate(DateTime dateTime) {
    final date = DateFormat.yMMMEd().format(dateTime);
    return date;
  }

  static String toYear(DateTime dateTime) {
    final date = DateFormat('yyMM').format(dateTime);
    return date;
  }

  static String toTime(DateTime dateTime) {
    final time = DateFormat.Hm().format(dateTime);
    return time;
  }

  static String toDay(DateTime dateTime) {
    final day = DateFormat.EEEE().format(dateTime);
    return day;
  }
}
