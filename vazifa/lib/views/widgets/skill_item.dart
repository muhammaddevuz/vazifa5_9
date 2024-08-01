import 'package:flutter/material.dart';

class SkillItem extends StatelessWidget {
  final String imageUrl;
  final String info;

  const SkillItem({super.key, required this.imageUrl, required this.info});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),clipBehavior: Clip.hardEdge,child: Image.network(imageUrl,width: 50,fit: BoxFit.cover,)),
          const SizedBox(width: 16),
          Text(info, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}