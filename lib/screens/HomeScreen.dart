import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Mi Tercera App"),
          backgroundColor: Color.fromARGB(255, 41, 30, 75),
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
      body: const MyForm(),
      //  Container(
      //   padding: const EdgeInsets.all(20),
      //   child: Center(
      //       child: Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      // children: [
      //   Row(
      //     children: const <Widget>[
      //       Expanded(
      //         child: TextButton(
      //           onPressed: (null),
      //           child: Text('Boton 1'),
      //         ),
      //       ),
      //       const SizedBox(
      //         height: 10,
      //       ),
      //       Expanded(
      //         child: TextButton(
      //           onPressed: (null),
      //           child: Text('Boton 2'),
      //         ),
      //       ),
      //       const SizedBox(
      //         height: 10,
      //       ),
      //       Expanded(
      //         child: TextButton(
      //           onPressed: (null),
      //           child: Text('Boton 3'),
      //         ),
      //       ),
      //     ],
      //   ),
      //   Text("Haga clic para continuar: "),
      //   const SizedBox(
      //     height: 30,
      //   ),
      //   TextButton(
      //     child: const Text('Comprar'),
      //     onPressed: null,
      //   ),
      //   const SizedBox(
      //     height: 30,
      //   ),
      // ],
      bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: Container(
            height: 50,
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: (() => {}),
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add_photo_alternate),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
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
