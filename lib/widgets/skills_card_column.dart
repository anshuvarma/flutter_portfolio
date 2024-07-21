import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:url_launcher/url_launcher.dart';

class SkillsCardColumn extends StatelessWidget {
  const SkillsCardColumn({
    super.key,
    required this.label,
    required this.description,
    required this.tags,
    required this.githubUrl,
  });

  final String label;
  final String description;
  final List<String> tags;
  final String githubUrl;

  Future<void> _launchURL() async {
    if (!await launchUrl(Uri.parse(githubUrl))) {
      throw 'Could not launch $githubUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          description,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 16),
        Row(
          children: tags.map((tag) {
            return Container(
              margin: const EdgeInsets.only(right: 8),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: const BoxDecoration(
                color: Colors.white,
                // borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                tag,
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
            );
          }).toList(),
        ),
        const SizedBox(height: 20),
        Center(
          child: TextButton(
            onPressed: _launchURL,
            style: TextButton.styleFrom(
              foregroundColor: Colors.black,
              backgroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              shape: const RoundedRectangleBorder(
                  // borderRadius: BorderRadius.circular(4),
                  ),
            ),
            child: const Text('View on GitHub'),
          ),
        ),
      ],
    );
  }
}
