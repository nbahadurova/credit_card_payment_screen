import 'package:flutter/material.dart';
import 'package:payment_page/constants/app_colors.dart';
import 'package:payment_page/extensions/context_extensions.dart';
import 'package:payment_page/extensions/material_page_property_all_extension.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.onPressed,
  });
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: AppColors.buttonColor.mspAll,
        fixedSize: Size(context.fW, 56).mspAll,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
            .mspAll,
      ),
      onPressed: onPressed,
      child: const Text(
        'Pay \$130',
        style: TextStyle(
            fontSize: 18,
            color: AppColors.pageBgColor,
            fontWeight: FontWeight.w600),
      ),
    );
  }
}
