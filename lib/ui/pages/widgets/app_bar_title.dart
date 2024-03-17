import 'package:flutter/material.dart';
import 'package:payment_page/constants/app_colors.dart';

class AppBarTitle extends StatelessWidget {

  const AppBarTitle({ super.key });

   @override
   Widget build(BuildContext context) {
       return const Text(
          'Payment details',
          style: TextStyle(
              color: AppColors.titleColor,
              fontWeight: FontWeight.w600,
              fontSize: 24),
        );
  }
}