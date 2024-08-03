import 'package:intl/intl.dart';

String formatNumber(int number) {
  return NumberFormat.decimalPattern('id').format(number);
}
