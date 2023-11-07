import 'package:flutter/material.dart';
import 'package:payment_gateway/core/global_widgets/build_app_bar.dart';
import '../widgets/my_cart_view_body.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: "My Cart"),
      body: const SafeArea(child: MyCartViewBody()),
    );
  }
}
