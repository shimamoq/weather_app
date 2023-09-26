import 'package:flutter/src/painting/text_style.dart';
import 'package:intl/intl.dart';

String convertTo12HourFormat(String time) {
  final formatter = DateFormat('hh:mm a');
  final dateTime = DateFormat('H:mm').parse(time);
  return formatter.format(dateTime);
}