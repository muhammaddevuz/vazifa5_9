import 'package:flutter/material.dart';
import 'package:vazifa/views/widgets/academic_item.dart';

class AcademicScreen extends StatelessWidget {
  const AcademicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Academic backgr.',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Expanded(
                child: ListView(
                  children: const [
                    AcademicItem(
                      title: 'JOURNALISM',
                      subtitle: 'Universidad Pontificia de Salamanca',
                      year: '2007',
                    ),
                    AcademicItem(
                      title: 'GALICIAN LANG.',
                      subtitle: 'Universidade da Coruña',
                      year: '2009',
                    ),
                    AcademicItem(
                      title: 'WEB APP DEVELOPMENT',
                      subtitle: 'IES Fernando Wirtz (A Coruña)',
                      year: '2016',
                    ),
                    AcademicItem(
                      title: 'UX/UI DESIGN',
                      subtitle: 'La Zona - FUE (Fundación Universidad Empresa)',
                      year: '2022',
                    ),
                  ],
                ),
              ),
            ],
          ),
    );
  }
}
