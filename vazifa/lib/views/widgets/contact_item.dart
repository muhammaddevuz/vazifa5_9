import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
  final IconData icon;
  final String info;

  const ContactItem({super.key, required this.icon, required this.info});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Icon(icon, size: 24),
          const SizedBox(width: 16),
          Text(info, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}