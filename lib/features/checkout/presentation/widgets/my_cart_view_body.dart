import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_gateway/core/utils/styles.dart';
import 'package:payment_gateway/features/checkout/data/repo/checkout_repository_impl.dart';
import 'package:payment_gateway/features/checkout/presentation/manager/payment_cubit.dart';
import 'package:payment_gateway/features/checkout/presentation/widgets/order_price_item.dart';
import 'package:payment_gateway/features/checkout/presentation/widgets/payment_method_bottom_sheet.dart';
import '../../../../core/global_widgets/custom_button.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(child: Center(child: Image.asset('assets/images/cart.png'))),
        const SizedBox(
          height: 10,
        ),
        const OrderPriceItem(priceName: 'Order Subtotal', priceAmount: '42.97'),
        const OrderPriceItem(priceName: 'Discount', priceAmount: '0'),
        const OrderPriceItem(priceName: 'Shipping', priceAmount: '8'),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 15),
          child: Divider(
            height: 2,
            color: Colors.black,
          ),
        ),
        const OrderPriceItem(
          priceName: 'Total',
          priceAmount: '50.97',
          priceNameStyle: Styles.style24Black,
          priceAmountStyle: Styles.style24Black,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 16),
          child: CustomButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (BuildContext context) =>
                //         const PaymentDetailsView(),
                //   ),
                // );

                showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    context: context,
                    builder: (context) {
                      return BlocProvider(
                        create: (context) => PaymentCubit(CheckOutRepositoryImpl()),
                        child: const PaymentMethodsBottomSheet(),
                      );
                    });
              },
              title: 'Complete Payment'),
        )
      ],
    );
  }
}


