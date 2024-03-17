import 'package:flutter/material.dart';
import 'package:payment_page/constants/app_colors.dart';
import 'package:payment_page/extensions/num_extensions.dart';

class InputWidget extends StatelessWidget {
  const InputWidget({
    super.key,
    required this.keyboardType,
    this.onFieldSubmitted,
    this.focusNode,
    this.returnText
  }) : title = null;
  const InputWidget.title({
    super.key,
    required this.keyboardType,
    required this.title,
    this.onFieldSubmitted,
    this.focusNode,
    this.returnText,
  });
  final TextInputType? keyboardType;
  final String? title;
  final void Function(String)? onFieldSubmitted;
  final FocusNode? focusNode;
  final String? returnText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null) ...[
          Text(
            title!,
            style: const TextStyle(color: AppColors.inputTitleColor, fontSize: 17),
          ),
          5.h,
        ],
        TextFormField(
          focusNode: focusNode,
          onFieldSubmitted: onFieldSubmitted,
          validator: (v) {
            if (v != null && v.isEmpty) {
              return returnText;
            }
            return null;
          },
          keyboardType: keyboardType,
          decoration: InputDecoration(
            focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: AppColors.buttonColor)),
              contentPadding: const EdgeInsets.only(top: 30),
              filled: true,
              fillColor: AppColors.inputColor,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: AppColors.inputColor,
                ),
              )),
        ),
      ],
    );
  }
}
