import 'package:flutter/material.dart';

class PaymentTypeTabItem extends StatelessWidget {
  const PaymentTypeTabItem(
      {super.key, required this.color, required this.image, this.onTap});

  final Color color;

  final String image;

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100,
        height: 60,
        decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
                side: BorderSide(width: 1.50, color: color),
                borderRadius: BorderRadius.circular(15)),
            shadows: [
              BoxShadow(
                  color: color.withOpacity(0.4),
                  blurRadius: 4,
                  offset: const Offset(0, 0),
                  spreadRadius: 0)
            ]),
        child: Container(
          width: 97,
          height: 55,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: Image.asset(image),
        ),
      ),
    );
  }
}
