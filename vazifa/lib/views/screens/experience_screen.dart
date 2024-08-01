import 'package:flutter/material.dart';
import 'package:vazifa/views/widgets/experience_item.dart';

class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
          padding: const EdgeInsets.all(16.0),
          children: const [
            ExperienceItem(
              year: '2024 - (CURRENT)',
              title: 'GRAPHIC DESIGN',
              company: 'La Voz de Galicia',
              description: 'Online & offline advertising design',
              isCurrent: true,
            ),
            ExperienceItem(
              year: '2021 - 2022',
              title: 'LAYOUT & GRAPHIC DESIGN',
              company: 'Nós Diario / Sermos Galiza',
              description: 'Offline design & layout. Infographics',
            ),
            ExperienceItem(
              year: '2020 - 2021',
              title: 'GRAPHIC, LAYOUT, AND SOCIAL MEDIA DESIGN',
              company: 'Octo Comunicación',
              description: 'Ads design, layout design, social media design',
            ),
            ExperienceItem(
              year: '2020 - 2020',
              title: 'FRONT END DEV. UI DESIGN',
              company: 'Softek',
              description: 'Web Design & developing with Angular',
            ),
            ExperienceItem(
              year: '2024 - (CURRENT)',
              title: 'GRAPHIC DESIGN',
              company: 'La Voz de Galicia',
              description: 'Online & offline advertising design',
            ),
            ExperienceItem(
              year: '2021 - 2022',
              title: 'LAYOUT & GRAPHIC DESIGN',
              company: 'Nós Diario / Sermos Galiza',
              description: 'Offline design & layout. Infographics',
            ),
            ExperienceItem(
              year: '2020 - 2021',
              title: 'GRAPHIC, LAYOUT, AND SOCIAL MEDIA DESIGN',
              company: 'Octo Comunicación',
              description: 'Ads design, layout design, social media design',
            ),
            ExperienceItem(
              year: '2020 - 2020',
              title: 'FRONT END DEV. UI DESIGN',
              company: 'Softek',
              description: 'Web Design & developing with Angular',
            ),
          ],
        
    );
  }
}
