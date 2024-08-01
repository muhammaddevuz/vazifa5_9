import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vazifa/views/widgets/contact_item.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Contact',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          const Text(
            'Hello! I am based in Culleredo, Galiza (Spain) and there are plenty of ways to get in touch with me:',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 20),
          const SizedBox(height: 16),
          const ContactItem(
            icon: Icons.phone,
            info: '(+34) 667 725130',
          ),
          const SizedBox(height: 20),
          const ContactItem(
            icon: Icons.email,
            info: 'v.rivadulla.deschamps@gmail.com',
          ),
          const SizedBox(height: 20),
          const ContactItem(
            icon: Icons.web,
            info: 'www.veronicard.eu',
          ),
          const SizedBox(height: 20),
          const ContactItem(
            icon: Icons.link,
            info: 'about.me',
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.linkedin),
                onPressed: () {},
              ),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.instagram),
                onPressed: () {},
              ),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.whatsapp),
                onPressed: () {},
              ),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.behance),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
