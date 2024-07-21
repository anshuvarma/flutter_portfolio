import 'package:flutter/material.dart';

class SkillsCard extends StatelessWidget {
  final String label;
  final String assetPath;

  const SkillsCard({
    super.key,
    required this.label,
    required this.assetPath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.cyan.shade50,
      elevation: 5.0,
      shape: const RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.white,
          width: 0.5,
        ),
      ),
      child: Container(
        color: Colors.black87,
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              assetPath,
              width: 20,
              height: 20,
            ),
            const SizedBox(width: 8.0),
            Text(
              label,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
