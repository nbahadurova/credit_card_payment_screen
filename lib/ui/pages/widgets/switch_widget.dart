import 'package:flutter/material.dart';
import 'package:payment_page/constants/app_colors.dart';

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({super.key});

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool isSelected = false;
  void changeValue(bool value) {
    setState(() {
      isSelected = !isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Text(
        'Save Payment Info',
        style: TextStyle(
            fontSize: 19,
            color: AppColors.inputTitleColor,
            fontWeight: FontWeight.w400),
      ),
      trailing: Switch(
        value: isSelected,
        onChanged: changeValue,
        inactiveThumbColor: AppColors.thumbColor,
        inactiveTrackColor: AppColors.inputColor,
        activeTrackColor: AppColors.inputColor,
        trackOutlineColor: MaterialStatePropertyAll(AppColors.buttonColor),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(color: AppColors.inputColor, width: 2),
      ),
    );
  }
}
