import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CustomCreditCard extends StatefulWidget {
  const CustomCreditCard({super.key});

  @override
  State<CustomCreditCard> createState() => _CustomCreditCardState();
}

class _CustomCreditCardState extends State<CustomCreditCard> {
  String cardNumber = '' , expiryDate = '', cardHolderName = '', cvvCode = '' ;

  bool showBackView = false ;

  GlobalKey<FormState> formKey = GlobalKey() ;

  @override
  Widget build(BuildContext context) {
    return Column(
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
            formKey: formKey)
      ],
    );
  }
}