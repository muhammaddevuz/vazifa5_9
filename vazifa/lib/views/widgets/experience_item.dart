import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ExperienceItem extends StatelessWidget {
  final String year;
  final String title;
  final String company;
  final String description;
  final bool isCurrent;

  const ExperienceItem({
    super.key,
    required this.year,
    required this.title,
    required this.company,
    required this.description,
    this.isCurrent = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: launchLinks,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                CircleAvatar(
                  radius: 15,
                  backgroundColor: isCurrent ? Colors.blue : Colors.pink[100],
                  child: isCurrent
                      ? const Icon(Icons.fiber_manual_record,
                          color: Colors.white)
                      : null,
                ),
                if (!isCurrent)
                  Container(
                    height: 100,
                    width: 2,
                    color: Colors.pink[100],
                  ),
              ],
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    year,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    company,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.black54,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    description,
                    style: const TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> launchLinks(
    {LaunchMode launchMode = LaunchMode.inAppWebView}) async {
  if (await canLaunchUrl(
      Uri.parse("https://github.com/muhammaddevuz/weather"))) {
    await launchUrl(Uri.parse("https://github.com/muhammaddevuz/weather"),
        mode: launchMode);
  }
}
