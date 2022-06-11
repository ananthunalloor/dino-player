import 'package:dino_player/screens/dev.dart';
import 'package:flutter/material.dart';

import 'constants/theme_data.dart';

void main() {
  runApp(const DinoPlayer());
}

class DinoPlayer extends StatelessWidget {
  const DinoPlayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dino Player',
      theme: dThemeData,
      home: const Dev(),
      debugShowCheckedModeBanner: false,
    );
  }
}
