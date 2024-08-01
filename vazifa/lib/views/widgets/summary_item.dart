import 'package:flutter/material.dart';

class SummaryItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const SummaryItem(
      {super.key,
      required this.icon,
      required this.title,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 90, color: Colors.indigo[900]),
        const SizedBox(width: 16),
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          textAlign: TextAlign.center,
          description,
          style: const TextStyle(fontSize: 16),
        ),
        SizedBox(height: 30)
      ],
    );
  }
}
