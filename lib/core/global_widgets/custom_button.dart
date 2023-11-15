import 'package:flutter/material.dart';

import '../utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onPressed, required this.title,  this.isLoading = false});

  final Function()? onPressed;

  final String title;

  final bool isLoading ;

  @override
  Widget build(BuildContext context) {
    Color defaultColor =
    const Color(0xff34A853); // Set your default button color
    // Color pressedColor = Colors.green[300]!; // Set the color when pressed
    return ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) {
                // The button is pressed
                return defaultColor;
              }
              // The button is not pressed
              return defaultColor;
            },
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius:
              BorderRadius.circular(8), // Custom border radius
            ),
          ),
          elevation: MaterialStateProperty.all<double>(5),
          // Add elevation to create shadow
          shadowColor: MaterialStateProperty.all<Color>(
              Colors.black.withOpacity(0.8)), // Shadow color
        ),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: isLoading ? const CircularProgressIndicator() : Text(
            title,
            style: Styles.style20Grey.copyWith(color: Colors.black , fontWeight: FontWeight.w700),
          ),
        ));
  }
}