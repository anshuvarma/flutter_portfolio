import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2.0, // Height of the thickest part of the line
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.black.withOpacity(0.0),
            Colors.black,
            Colors.black.withOpacity(0.0),
          ],
          stops: [0.07, 0.5, 0.93],
        ),
      ),
    );
  }
}
