import 'dart:async';
import 'dart:math';
import 'dart:ui';
import 'package:flame/game.dart';
import 'package:flame/components.dart';
import 'package:flame/collisions.dart';
import 'package:flutter/material.dart';
import 'components/basket.dart';
import 'components/fruit.dart';
import 'managers/audio_manager.dart';

class FruitCatcherGame extends FlameGame with HasCollisionDetection {
  @override
  Color backgroundColor() => const Color(0xFF87CEEB);

  final ValueNotifier<int> scoreNotifier = ValueNotifier<int>(0);

  late Timer _spawnTimer;
  final Random _random = Random();

  @override
  Future<void> onLoad() async {
    await super.onLoad();

    AudioManager().playBackgroundMusic();

    add(Basket());

    _spawnTimer = Timer(1, repeat: true, onTick: spawnFruit);

    _spawnTimer.start();
  }

  @override
  void update(double dt) {
    super.update(dt);
    _spawnTimer.update(dt);
  }

  void spawnFruit() {
    final xPosition = _random.nextDouble() * size.x;

    add(Fruit(position: Vector2(xPosition, -20)));
  }

  void incrementScore() {
    scoreNotifier.value++;
  }

  @override
  void onRemove() {
    scoreNotifier.dispose();
    super.onRemove();
  }
}
