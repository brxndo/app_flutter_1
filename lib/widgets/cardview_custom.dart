import 'package:app_flutter_1/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CardViewCustom extends StatelessWidget {
  final String
      titulo; //para recibir por parametros los valores del titulo y el mensaje
  final String mensaje;
  const CardViewCustom(
      {super.key, required this.titulo, required this.mensaje});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            title: Text(titulo),
            subtitle: Text(mensaje),
            leading: const Icon(
              Icons.person,
              size: 50,
              color: AppTheme.primaryColor,
            ),
          )
        ],
      ),
    );
  }
}
