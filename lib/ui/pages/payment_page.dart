import 'dart:developer';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:payment_page/constants/app_texts.dart';
import 'package:payment_page/constants/app_colors.dart';
import 'package:payment_page/constants/app_paddings.dart';
import 'package:payment_page/extensions/num_extensions.dart';
import 'package:payment_page/ui/pages/widgets/input_widget.dart';
import 'package:payment_page/ui/pages/widgets/app_bar_title.dart';
import 'package:payment_page/ui/pages/widgets/button_widget.dart';
import 'package:payment_page/ui/pages/widgets/switch_widget.dart';
import 'package:payment_page/ui/pages/widgets/inputs_view_widget.dart';
import 'package:payment_page/ui/pages/widgets/security_text_widget.dart';


class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  late final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pageBgColor,
      appBar: AppBar(
        backgroundColor: AppColors.pageBgColor,
        title: const AppBarTitle(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppPaddings.h18 + AppPaddings.t25,
          child: Column(
            children: [
              Form(
                key: formkey,
                child: InputsViewWidget(),
              ),
              35.h,
              const SwitchWidget(),
              60.h,
              ButtonWidget(
                onPressed: () 
                     async {
                    if (formkey.currentState != null &&
                      formkey.currentState!.validate()) {
                      log('Successfully login');
                      setState(() {
                        
                      });
                      return;
                    }
                  },
                
              ),
              25.h,
              const SecurityTextWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
