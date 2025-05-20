import 'package:flutter/material.dart';

class ResultSnackbar extends SnackBar {
  ResultSnackbar({
    required final String prefix,
    required final String message,
    required final Color color,
    super.key,
  }) : super(
          duration: const Duration(seconds: 5),
          backgroundColor: color,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SelectableText(prefix),
              SelectableText(message),
            ],
          ),
        );

  factory ResultSnackbar.update(final String message) => ResultSnackbar(
        prefix: 'Update received : ',
        message: message,
        color: Colors.blue,
      );

  factory ResultSnackbar.success(final String message) => ResultSnackbar(
        prefix: 'Success :',
        message: message,
        color: Colors.green,
      );

  factory ResultSnackbar.error(final String message) => ResultSnackbar(
        prefix: 'Error :',
        message: message,
        color: Colors.red,
      );
}
