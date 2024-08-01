import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffE5FDFF),
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 700,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    clipBehavior: Clip.hardEdge,
                    width: 200,
                    height: 200,
                    child: const Icon(
                      Icons.person,
                      size: 100,
                    ),
                  ),
                  const Text(
                    "Abduxalilov Muhammad",
                    style: TextStyle(
                        color: Color(0xFF000072),
                        fontSize: 30,
                        fontWeight: FontWeight.w400),
                  ),
                  const Column(
                    children: [
                      Text(
                        'Flutter developer',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                       Text(
                        'Junior',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.place),
                      SizedBox(width: 10),
                      Text(
                        'Buvaida, Fergana, Uzbekistan',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      )
                    ],
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
