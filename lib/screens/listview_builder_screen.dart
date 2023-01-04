import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatelessWidget {
  const ListViewBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Pantalla List View Builder Screen"),
        ),
        body:
            const Center(child: Text("Pantalla de List View Builder Screen")));
  }
}
