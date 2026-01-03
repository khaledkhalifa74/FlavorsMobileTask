import 'package:flavors_mobile_task/core/theming/colors.dart';
import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, {required String content , required bool isError}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(content),
      backgroundColor: isError ? ColorsManager.kError : ColorsManager.kSuccess,
    ),
  );
}