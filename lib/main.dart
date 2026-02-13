import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);   

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(                   
      title: 'Fruit Catcher Game',
      home: GameScreen(),
    );
  }
}


class GameScreen extends StatefulWidget {
 const GameScreen({super.key});
 @override
 State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {

 @override
 void initState() {
 super.initState();
 }


