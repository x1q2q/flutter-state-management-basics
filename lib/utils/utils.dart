import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:fire_statex/res/app_colors.dart';

class Utils {
  static String toFormattedDate(String format,
      {DateTime? datetime, String? timestamp}) {
    DateTime? dateTime =
        timestamp != null ? DateTime.parse(timestamp) : datetime;
    return DateFormat(format, "id_ID").format(dateTime!);
  }

  static snackBar(String message, BuildContext context) {
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(backgroundColor: AppColors.primary, content: Text(message)));
  }
}
