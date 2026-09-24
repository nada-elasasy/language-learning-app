import 'package:flutter/material.dart';
import 'package:toku/components/category_item.dart';
import 'package:toku/screens/family_mebers.dart';
import 'package:toku/screens/numbers_page.dart';
import 'package:toku/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Toku'),
            backgroundColor: const Color(0xFF6B4226)),
        body: Column(
          children: [
            Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const numbersPage();
                }));
              },
              text: 'Numbers',
              color: const Color(0xFFEF9235),
            ),
            Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const FamilyMeberspage();
                }));
              },
              text: 'Family Members',
              color: const Color(0xFF458B00),
            ),
            Category(
              text: 'colors',
              color: Color.fromARGB(255, 158, 13, 112),
            ),
            Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const PhrasesPage();
                }));
              },
              text: 'Phrases',
              color: Color.fromARGB(255, 80, 224, 234),
            ),
          ],
        ));
  }
}
