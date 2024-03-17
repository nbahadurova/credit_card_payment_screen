import 'package:flutter/material.dart';
import 'package:payment_page/constants/app_colors.dart';
import 'package:payment_page/extensions/num_extensions.dart';

class SecurityTextWidget extends StatelessWidget {
  const SecurityTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.lock,
          color: AppColors.secureTextColor,
          size: 16,
        ),
        3.w,
        const Text(
          'Your payment details are secure and encrypted',
          style: TextStyle(
              color: AppColors.secureTextColor,
              fontSize: 13,
              fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
