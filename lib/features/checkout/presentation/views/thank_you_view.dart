import 'package:flutter/material.dart';
import 'package:payment_gateway/core/global_widgets/build_app_bar.dart';

import '../widgets/thank_you_view_body.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: ''),
      body: Transform.translate(
          offset: const Offset(0, -8),
          child: const ThankYouViewBody()),
    );
  }
}
