import 'package:flutter/material.dart';

import '../utils/styles.dart';

AppBar buildAppBar({required String title}) {
  return AppBar(
    title: Text(title, style: Styles.style25Black),
  );
}
