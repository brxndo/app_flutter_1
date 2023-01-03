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
                PopupMenuItem<int>(
                  value: 0,
                  child: Text("Mi Cuenta"),
                ),
                PopupMenuItem<int>(value: 1, child: Text("Opciones")),
                PopupMenuItem<int>(value: 2, child: Text("Salir"))
              ];
            })
          ]),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: const <Widget>[
                Expanded(
                  child: TextButton(
                    onPressed: (null),
                    child: Text('Boton 1'),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: TextButton(
                    onPressed: (null),
                    child: Text('Boton 2'),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: TextButton(
                    onPressed: (null),
                    child: Text('Boton 3'),
                  ),
                ),
              ],
            ),
            Text("Haga clic para continuar: "),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              child: const Text('Comprar'),
              onPressed: null,
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        )),
      ),

      /*MyCard()*/
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
