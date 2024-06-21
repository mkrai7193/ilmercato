import 'package:intl/intl.dart';

generatePercentString(percentValue) {
  var percentString = NumberFormat.currency(name: '').format(percentValue);
  return percentString;
}