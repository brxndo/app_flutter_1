import 'package:flutter/material.dart';

class AnimatedScreen extends StatelessWidget {
  const AnimatedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Pantalla Animated Screen"),
        ),
        body: const Center(child: Text("Pantalla de Animated Screen")));
  }
}
