import 'package:flutter/material.dart';

import '../utils/styles.dart';

AppBar buildAppBar({required String title}) {
  return AppBar(
    iconTheme: const IconThemeData(
      size: 34
    ),
    title: Text(title, style: Styles.style25Black),
  );
}
