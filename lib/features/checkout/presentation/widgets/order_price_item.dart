import 'package:flutter/material.dart';
import 'package:payment_gateway/core/utils/styles.dart';

class OrderPriceItem extends StatelessWidget {
  const OrderPriceItem({super.key, required this.priceName, required this.priceAmount,  this.priceNameStyle,  this.priceAmountStyle});

  final String priceName ;
  final String priceAmount ;
  final TextStyle? priceNameStyle ;
  final TextStyle? priceAmountStyle ;


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
              priceName,
              style: (priceNameStyle == null )?Styles.style18Black : priceNameStyle
          ),
          Text(
              '\$$priceAmount',
              style: (priceAmountStyle == null )? Styles.style18Black : priceAmountStyle
          )
        ],
      ),
    );
  }
}
