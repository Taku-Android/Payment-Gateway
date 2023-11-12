import 'package:flutter/material.dart';
import 'package:payment_gateway/core/utils/styles.dart';
import 'package:payment_gateway/features/checkout/presentation/widgets/order_price_item.dart';
import 'package:payment_gateway/features/checkout/presentation/widgets/thank_you_card_type.dart';
import 'package:payment_gateway/features/checkout/presentation/widgets/thank_you_info.dart';
import 'package:payment_gateway/features/checkout/presentation/widgets/thank_you_qr_code.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xffd9d9d9),
      ),
      child: const Padding(
        padding: EdgeInsets.only(top: 60.0),
        child: Column(
          children: [
            Text("Thank you!", style: Styles.style25Black),
            Text("Your transaction was successful", style: Styles.style18Black),
            SizedBox(
              height: 40,
            ),
            ThankYouInfo(info: 'Date', detail: '01/24/2023'),
            ThankYouInfo(info: 'Time', detail: '10:15 AM'),
            ThankYouInfo(info: 'To', detail: 'Sam Louis'),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
              child: Divider(
                thickness: 1,
                color: Colors.grey,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
              child: OrderPriceItem(
                priceName: 'Total',
                priceAmount: '50.97',
                priceNameStyle: Styles.style24Black,
                priceAmountStyle: Styles.style24Black,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
              child: ThankYouCardType(),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(left: 22.0, right: 22),
              child: ThankYouQrCode(),
            ),

          ],
        ),
      ),
    );
  }
}


