import 'package:flutter/material.dart';
import 'package:payment_gateway/features/checkout/presentation/widgets/payment_type_tab_item.dart';

class PaymentTypeListTabs extends StatefulWidget {
  const PaymentTypeListTabs({super.key});

  @override
  State<PaymentTypeListTabs> createState() => _PaymentTypeListTabsState();
}

class _PaymentTypeListTabsState extends State<PaymentTypeListTabs> {

  bool card = true;
  bool paypal = false;
  bool applePay = false;


  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        PaymentTypeTabItem(
          color: (card)?Colors.green[600]! : Colors.grey,
          image: 'assets/images/card.png',
          onTap: (){
            setState(() {
              card = true ;
              paypal = false ;
              applePay = false ;
            });
          },
        ),
        PaymentTypeTabItem(
          color: (paypal)?Colors.green[600]! : Colors.grey,
          image: 'assets/images/paypal.png',
          onTap: (){
            setState(() {
              card = false ;
              paypal = true ;
              applePay = false ;
            });
          },
        ),
        PaymentTypeTabItem(
          color: (applePay)?Colors.green[600]! : Colors.grey,
          image: 'assets/images/apple_pay.png',
          onTap: (){
            setState(() {
              card = false ;
              paypal = false ;
              applePay = true ;
            });
          },
        ),
      ],
    );
  }
}