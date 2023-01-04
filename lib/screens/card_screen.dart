import 'package:app_flutter_1/widgets/cardview_custom.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Card Screen")),
        body: Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Column(
            children: const [
              CardViewCustom(titulo: "Titulo", mensaje: "Este es un mensaje")
            ],
          ),
        ));
  }
}
