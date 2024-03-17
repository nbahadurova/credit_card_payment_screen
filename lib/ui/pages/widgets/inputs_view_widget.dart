import 'package:flutter/material.dart';
import 'package:payment_page/constants/app_texts.dart';
import 'package:payment_page/extensions/num_extensions.dart';
import 'package:payment_page/ui/pages/widgets/input_widget.dart';

class InputsViewWidget extends StatelessWidget {

  const InputsViewWidget({ super.key });
  
   @override
   Widget build(BuildContext context) {
    final FocusNode cardHolderName = FocusNode();
    final FocusNode expirationDate = FocusNode();
    final FocusNode cardNumber = FocusNode();
    final FocusNode cvv = FocusNode();
       return Column(
        children: [
           InputWidget.title(
            returnText: 'Enter Card Number',
              title: AppTexts.cardNumber,
              keyboardType: TextInputType.number,
              focusNode: cardNumber,
              onFieldSubmitted: (v) {
                FocusScope.of(context).requestFocus(cardHolderName);
              },
              
            ),
            20.h,
            InputWidget.title(
              returnText: 'Enter Cardholder Name',
              title: AppTexts.cardHolderName,
              keyboardType: TextInputType.name,
              focusNode: cardHolderName,
              onFieldSubmitted: (v) {
            FocusScope.of(context).requestFocus(expirationDate);
          },
              
            ),
            20.h,
            Row(
              children: [
                Expanded(
                    flex: 3,
                    child: InputWidget.title(
                      returnText: 'Enter Expiration Date',
                      title: AppTexts.expirationDate,
                      keyboardType: TextInputType.number,
                      focusNode: expirationDate,
                      onFieldSubmitted: (v) {
                    FocusScope.of(context).requestFocus(cvv);
                  },
                      
                    )),
                20.w,
                Expanded(
                    flex: 2,
                    child: InputWidget.title(
                      returnText: 'Enter CVV',
                      title: AppTexts.cvv,
                      keyboardType: TextInputType.number,
                      focusNode: cvv,
                     
                    )),
              ],
            ),
        ],
       );
  }
}