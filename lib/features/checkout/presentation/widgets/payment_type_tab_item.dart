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
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: 105,
        height: 70,
        decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
                side: BorderSide(width: 1.50, color: color),
                borderRadius: BorderRadius.circular(15)),
            shadows: [
              BoxShadow(
                  color: color,
                  blurRadius: 6,
                  offset: const Offset(0, 0),
                  spreadRadius: 0)
            ]),
        child: Container(
          width: 90,
          height: 50,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: Image.asset(image ,
          width: 90,
            height: 50,
          ),
        ),
      ),
    );
  }
}
