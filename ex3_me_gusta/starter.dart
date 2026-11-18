import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: Center(child: LikeButton())),
    );
  }
}

class LikeButton extends StatefulWidget {
  const LikeButton({super.key});

  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  // TODO: guarda aquí el estado (bool liked y int likes)

  @override
  Widget build(BuildContext context) {
    // TODO: IconButton con corazón + Text con el número de me gusta
    return const Icon(Icons.favorite_border);
  }
}
