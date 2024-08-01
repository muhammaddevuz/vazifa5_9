import 'package:flutter/material.dart';
import 'package:vazifa/views/widgets/skill_item.dart';

class SkillScreen extends StatelessWidget {
  const SkillScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Skills: Tech',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          SizedBox(height: 16),
          SkillItem(
            imageUrl:
                "https://static.vecteezy.com/system/resources/thumbnails/019/016/809/small_2x/adobe-photoshop-express-editor-icon-free-png.png",
            info: 'Adobe Photoshop',
          ),
          SizedBox(height: 20),
          SkillItem(
            imageUrl:
                "https://static.vecteezy.com/system/resources/thumbnails/019/016/809/small_2x/adobe-photoshop-express-editor-icon-free-png.png",
            info: 'Adobe Illustrator',
          ),
          SizedBox(height: 20),
          SkillItem(
            imageUrl:
                "https://static.vecteezy.com/system/resources/thumbnails/019/016/809/small_2x/adobe-photoshop-express-editor-icon-free-png.png",
            info: 'Adobe InDesign',
          ),
          SizedBox(height: 20),
          SkillItem(
            imageUrl:
                "https://static.vecteezy.com/system/resources/thumbnails/019/016/809/small_2x/adobe-photoshop-express-editor-icon-free-png.png",
            info: 'Adobe After Effects',
          ),
        ],
      ),
    );
  }
}
