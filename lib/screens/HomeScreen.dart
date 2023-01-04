import 'package:app_flutter_1/models/menu_options.dart';
import 'package:app_flutter_1/router/app_router.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static List<MenuOptions> listaMenu = AppRouter.menuOption;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Componentes de Flutter"),
            elevation: 10,
            actions: [
              PopupMenuButton(itemBuilder: (context) {
                return [
                  const PopupMenuItem<int>(
                    value: 0,
                    child: Text("Mi Cuenta"),
                  ),
                  const PopupMenuItem<int>(value: 1, child: Text("Opciones")),
                  const PopupMenuItem<int>(value: 2, child: Text("Salir"))
                ];
              })
            ]),
        body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
            title: Text(listaMenu[index].nombre),
            leading: Icon(listaMenu[index].icono),
            onTap: () {
              Navigator.pushNamed(context, listaMenu[index].route);
            },
          ),
          separatorBuilder: (context, index) => const Divider(),
          itemCount: AppRouter.menuOption.length,
        ));
  }
}

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyForm();
}

class _MyForm extends State<MyForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Ingrese su email',
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Debe ingresar un texto';
                }
                return null;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Ingrese su contraseña',
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Debe ingresar un texto';
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  // Validate will return true if the form is valid, or false if
                  // the form is invalid.
                  if (_formKey.currentState!.validate()) {
                    // Process data.
                  }
                },
                child: const Text('Enviar'),
              ),
            ),
          ],
        ));
  }
}

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.album),
              title: Text('Una Cancion'),
              subtitle: Text('Music by Los de Adentro.'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('BUY TICKETS'),
                  onPressed: () {},
                ),
                const SizedBox(width: 8),
                TextButton(
                  child: const Text('LISTEN'),
                  onPressed: () {},
                ),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
