import 'package:flutter/material.dart';
import 'package:vazifa/views/widgets/summary_item.dart';

class SummaryScreen extends StatelessWidget {
  const SummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SummaryItem(
              icon: Icons.storage,
              title: 'Polivalent',
              description:
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
            ),
            SizedBox(height: 30),
            SummaryItem(
              icon: Icons.work,
              title: 'Experience',
              description:
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
            ),
            SizedBox(height: 30),
            SummaryItem(
              icon: Icons.chat,
              title: 'Open-minded',
              description:
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
            ),
            SizedBox(height: 30),
            SummaryItem(
              icon: Icons.sentiment_satisfied,
              title: 'Empathic & humble',
              description:
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
            ),
          ],
        ),
      ),
    );
  }
}
