import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Pantalla Alert Screen"),
        ),
        body: Center(
            child: ElevatedButton(
                onPressed: (() {
                  _mostrarDialogo(context);
                }),
                child: const Text("Mostrar Alerta"))));
  }

  void _mostrarDialogo(BuildContext context) {
    showDialog(
        context: context,
        builder: ((context) {
          return AlertDialog(
            title: const Text("Titulo del dialogo"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [Text("Este es el contenido de la alerta")],
            ),
            actions: [
              TextButton(
                  onPressed: (() {
                    Navigator.pop(context);
                  }),
                  child: const Text("Cerrar"))
            ],
          );
        }));
  }
}
