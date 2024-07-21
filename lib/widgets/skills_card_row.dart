import 'package:flutter/material.dart';

class SkillsCardRow extends StatelessWidget {
  const SkillsCardRow({
    super.key,
    required this.label,
    required this.assetPath,
  });

  final String label;
  final String assetPath;

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

      // Skill Container
      child: Container(
        color: Colors.black87,
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              assetPath,
              fit: BoxFit.contain,
            ),
            const SizedBox(width: 8.0),
            Flexible(
              child: Text(
                label,
                style: const TextStyle(color: Colors.white),
                overflow: TextOverflow.ellipsis, // Ensure text doesn't overflow
              ),
            ),
          ],
        ),
      ),
    );
  }
}
