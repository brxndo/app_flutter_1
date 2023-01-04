import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 50;
  double _height = 50;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);
  Color _color = Colors.indigo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pantalla Animated Screen"),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 600),
          curve: Curves.easeOutCubic,
          width: _width,
          height: _height,
          decoration: BoxDecoration(color: _color, borderRadius: _borderRadius),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.message),
        onPressed: () {
          final random = Random();
          _width = random.nextInt(300).toDouble() + 70;
          _height = random.nextInt(300).toDouble() + 70;
          _borderRadius =
              BorderRadius.circular(random.nextInt(300).toDouble() + 70);
          _color = Color.fromRGBO(
              random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
          setState(() {}); //PARA ACTUALIZAR
        },
      ),
    );
  }
}
