import 'package:flutter/material.dart';

class SliderScreen extends StatelessWidget {
  const SliderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Pantalla Slider Screen"),
        ),
        body: const Center(child: Text("Pantalla de Slider Screen")));
  }
}
