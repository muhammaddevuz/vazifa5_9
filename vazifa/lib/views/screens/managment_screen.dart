import 'package:flutter/material.dart';
import 'package:vazifa/service/download_pdf_service.dart';
import 'package:vazifa/service/permission_service.dart';
import 'package:vazifa/views/screens/academic_screen.dart';
import 'package:vazifa/views/screens/contact_screen.dart';
import 'package:vazifa/views/screens/experience_screen.dart';
import 'package:vazifa/views/screens/profile_screen.dart';
import 'package:vazifa/views/screens/skill_screen.dart';
import 'package:vazifa/views/screens/summary_screen.dart';

class ManagmentScreen extends StatefulWidget {
  const ManagmentScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ManagmentScreenState();
  }
}

class _ManagmentScreenState extends State<ManagmentScreen> {
  final PageController _pageController = PageController();

  int _currentPage = 0;

  final int _totalPages = 7;
  List screenList = [
    const ProfileScreen(),
    const SummaryScreen(),
    const AcademicScreen(),
    const ExperienceScreen(),
    const SkillScreen(),
    const ContactScreen(),
  ];
  @override
  void initState() {
    super.initState();
    requestPermission();
  }

  void requestPermission() async {
    await PermissionService.requestStoragePermission();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        // leading: IconButton(onPressed: (){}, icon: Icon(Icons.le)),
        actions: [
          IconButton(
              onPressed: () {
                DownloadPdfService.downloadAndSavePdf();
              },
              icon: const Icon(
                Icons.picture_as_pdf,
                size: 30,
              )),
          const SizedBox(width: 10),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              itemCount: screenList.length,
              itemBuilder: (context, index) {
                return screenList[index];
              },
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              backgroundColor: _currentPage == 0 ? null : Colors.pink,
              onPressed: () {
                if (_currentPage > 0) {
                  _pageController.previousPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                }
              },
              child: Icon(
                Icons.arrow_back,
                color: _currentPage == 0 ? null : Colors.white,
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  )),
              child: const Text(
                "Contact",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
            FloatingActionButton(
              backgroundColor: _currentPage == 6 ? null : Colors.pink,
              onPressed: () {
                if (_currentPage < _totalPages - 1) {
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                }
              },
              child: Icon(
                Icons.arrow_forward,
                color:
                    _currentPage == screenList.length - 1 ? null : Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
