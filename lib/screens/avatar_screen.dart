import 'package:flutter/material.dart';

import '../widgets/cardview_custom.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Mi Perfil"),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: CircleAvatar(
                backgroundColor: Colors.indigo[900],
                child: const Text("BT"),
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Center(
                child: CircleAvatar(
                  maxRadius: 110,
                  backgroundImage: AssetImage('assets/foto.jpeg'),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: const [
                  Expanded(
                    child: CircleAvatar(
                      backgroundColor: Colors.indigo,
                      maxRadius: 30,
                      child: Icon(
                        Icons.facebook,
                        size: 40,
                      ),
                    ),
                  ),
                  Expanded(
                    child: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 95, 42, 74),
                      maxRadius: 30,
                      child: Icon(
                        Icons.camera_alt,
                        size: 35,
                      ),
                    ),
                  ),
                  Expanded(
                    child: CircleAvatar(
                      backgroundColor: Colors.black,
                      maxRadius: 30,
                      child: Icon(
                        Icons.tiktok,
                        size: 35,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const CardViewCustom(
                  titulo: "MI PERFIL",
                  mensaje:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
            ],
          ),
        ));
  }
}
