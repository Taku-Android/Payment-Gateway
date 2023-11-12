import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

import '../../../../core/global_widgets/custom_button.dart';

class CustomCreditCard extends StatefulWidget {
  const CustomCreditCard({super.key});

  @override
  State<CustomCreditCard> createState() => _CustomCreditCardState();
}

class _CustomCreditCardState extends State<CustomCreditCard> {
  String cardNumber = '' , expiryDate = '', cardHolderName = '', cvvCode = '' ;

  bool showBackView = false ;

  GlobalKey<FormState> formKey = GlobalKey() ;

  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CreditCardWidget(
          isHolderNameVisible: true,
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          showBackView: showBackView,
          onCreditCardWidgetChange: (value){

          },
        ),
        CreditCardForm(
          autovalidateMode: autoValidateMode,
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            onCreditCardModelChange: (value){
              cardNumber = value.cardNumber ;
              expiryDate = value.expiryDate ;
              cardHolderName = value.cardHolderName ;
              cvvCode = value.cvvCode ;
              showBackView = value.isCvvFocused;
              setState(() {

              });
            },
            formKey: formKey) ,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0 , vertical: 35 ),
          child: CustomButton(onPressed: (){
            if(formKey.currentState!.validate()){
              formKey.currentState!.save();
            }else{
              autoValidateMode = AutovalidateMode.always;
            }
          }, title: 'Pay'),
        ),
      ],
    );
  }
}