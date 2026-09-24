import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';
import 'package:toku/components/phrese_item.dart';
import 'package:toku/models/number.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({Key? key}) : super(key: key);
  final List<ItemModel> numbers = const [
    ItemModel(
        image: 'assets/images/family_members/family_father.png',
        jpName: 'ichi',
        enName: 'father',
        sound: 'sounds/numbers/number_one_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_two.png',
        jpName: 'ni',
        enName: 'mother',
        sound: 'sounds/numbers/number_two_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_three.png',
        jpName: 'san',
        enName: 'three',
        sound: 'sounds/numbers/number_three_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_four.png',
        jpName: 'shi',
        enName: 'four',
        sound: 'sounds/numbers/number_four_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_five.png',
        jpName: 'go',
        enName: 'five',
        sound: 'assets/sounds/numbers/number_five_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_six.png',
        jpName: 'ROKU',
        enName: 'six',
        sound: 'sounds/numbers/number_six_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_seven.png',
        jpName: 'jj',
        enName: 'seven',
        sound: 'sounds/numbers/number_seven_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_eight.png',
        jpName: 'hachi',
        enName: 'eight',
        sound: 'sounds/numbers/number_eight_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_nine.png',
        jpName: 'kyu',
        enName: 'nine',
        sound: 'sounds/numbers/number_nine_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_ten.png',
        jpName: 'ju',
        enName: 'ten',
        sound: 'sounds/numbers/number_ten_sound.mp3')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('phreses', style: TextStyle(color: Colors.white)),
          backgroundColor: const Color.fromARGB(255, 48, 31, 8)),
      body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, num) {
            print(num);
            return phasesitem(
                color: const Color.fromARGB(255, 83, 221, 207),
                item: numbers[num]);
          }),
    );
  }
}
