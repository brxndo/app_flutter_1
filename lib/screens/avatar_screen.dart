import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Pantalla Avatar Screen"),
        ),
        body: const Center(child: Text("Pantalla de Avatar Screen")));
  }
}
