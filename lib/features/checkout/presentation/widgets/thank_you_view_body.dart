import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Stack(clipBehavior: Clip.none, children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xffd9d9d9),
          ),
        ),
        const Positioned(
          top: -60,
          left: 0,
          right: 0,
          child: CircleAvatar(
            radius: 60,
            backgroundColor: Color(0xffd9d9d9),
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.green,
              child: Icon(
                Icons.check,
                size: 80,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: MediaQuery.sizeOf(context).height * .2 + 20,
          left: 0,
          right: 0,
          child: const CustomDashedLine()
        ),
        Positioned(
          left: -20,
          bottom: MediaQuery.sizeOf(context).height * .2,
          child: const CircleAvatar(
            backgroundColor: Colors.white,
          ),
        ),
        Positioned(
          right: -20,
          bottom: MediaQuery.sizeOf(context).height * .2,
          child: const CircleAvatar(
            backgroundColor: Colors.white,
          ),
        ),
      ]),
    );
  }
}

class CustomDashedLine extends StatelessWidget {
  const CustomDashedLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        30,
            (index) => Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2.0),
            child: Container(
              color: Colors.grey,
              height: 2,
            ),
          ),
        ),
      ),
    );
  }
}

