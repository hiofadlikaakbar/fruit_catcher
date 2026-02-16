import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'game/fruit_catcher_game.dart';
import 'game/managers/audio_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await AudioManager().initialize();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GameScreen(),
    );
  }
}
