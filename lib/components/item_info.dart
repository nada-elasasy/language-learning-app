import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/number.dart';

class Iteminfo extends StatelessWidget {
  const Iteminfo({Key? key, required this.item}) : super(key: key);
  final ItemModel item;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(item.enName,
                  style: const TextStyle(fontSize: 22, color: Colors.white)),
              Text(item.jpName,
                  style: const TextStyle(fontSize: 18, color: Colors.white)),
            ],
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        IconButton(
          onPressed: () {
            final player = AudioPlayer();
            player.play(AssetSource('sounds/numbers/number_one_sound.mp3'));
          },
          icon: const Icon(
            Icons.play_arrow,
            color: Colors.white,
            size: 30,
          ),
        )
      ],
    );
  }
}
