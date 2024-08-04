import 'package:flutter/material.dart';
import 'package:web_app/constants.dart';

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
      // shadowColor: Color.fromARGB(174, 23, 145, 176);
      // elevation: 3.0,
      shape: const RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.black,
          width: 0.5,
        ),
      ),

      // Skill Container
      child: Container(
        color: Colors.white,
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
                style: AppColors.cardDesc,
                // style: const TextStyle(color: Colors.black),
                overflow: TextOverflow.ellipsis, // Ensure text doesn't overflow
              ),
            ),
          ],
        ),
      ),
    );
  }
}
