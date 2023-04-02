import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String formattedDay() {
    DateTime currentDate = copyWith(
      hour: 0,
      minute: 0,
      second: 0,
      microsecond: 0,
      millisecond: 0,
    );

    DateTime today = DateTime.now().copyWith(
      hour: 0,
      minute: 0,
      second: 0,
      microsecond: 0,
      millisecond: 0,
    );

    int days = currentDate.difference(today).inDays;
    String dateStr = DateFormat('MMMM d').format(this);

    if (days == 0) {
      return 'Today, $dateStr';
    } else if (days == -1) {
      return 'Yesterday';
    } else if (days == 1) {
      return 'Tomorrow';
    } else if (days < 7 || days > -7) {
      return DateFormat('EEEE').format(this);
    } else {
      return DateFormat('EEEE, MMMM d').format(this);
    }
  }
}
