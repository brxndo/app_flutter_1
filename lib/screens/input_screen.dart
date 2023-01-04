import 'package:app_flutter_1/widgets/input_custom.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formularioRegistro = GlobalKey<FormState>();
    final Map<String, String> valores = {
      'name': 'Brando',
      'last_name': 'Toledo',
      'email': 'brando@hotmail.com',
      'password': '123456',
      'role': 'admin',
    };

    return Scaffold(
        appBar: AppBar(title: const Text("Input Screen")),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          child: Form(
            key: formularioRegistro,
            child: Column(children: [
              const SizedBox(height: 40), //genera un espaciado
              InputCustom(
                  labelText: "Nombre",
                  hintText: "Ingrese su nombre",
                  formProperty: 'name',
                  formValues: valores),
              const SizedBox(height: 30),
              InputCustom(
                  labelText: "Apellido",
                  hintText: "Ingrese su apellido",
                  formProperty: 'last_name',
                  formValues: valores),
              const SizedBox(height: 30),
              InputCustom(
                  labelText: "Email",
                  hintText: "Ingrese su email",
                  formProperty: 'email',
                  inputType: TextInputType.emailAddress,
                  formValues: valores),
              const SizedBox(height: 30),
              InputCustom(
                  labelText: "Password",
                  hintText: "Ingrese su contraseña",
                  formProperty: 'password',
                  isObscureText: true,
                  formValues: valores),
              const SizedBox(height: 30),
              DropdownButtonFormField(
                  value: 'admin',
                  items: const [
                    DropdownMenuItem(
                        value: "admin", child: Text("Administrador")),
                    DropdownMenuItem(
                        value: "susuario", child: Text("Super Usuario")),
                    DropdownMenuItem(value: "dev", child: Text("Programador")),
                    DropdownMenuItem(
                        value: "devj", child: Text("Programador Junior")),
                  ],
                  onChanged: (value) {
                    valores['role'] = value ?? 'admin';
                  }),

              const SizedBox(height: 30),

              ElevatedButton(
                  onPressed: (() {
                    FocusScope.of(context).requestFocus(FocusNode());

                    if (!formularioRegistro.currentState!.validate()) {
                      _mostrarDialogo(context, "Formulario no valido", "Error");
                    } else {
                      _mostrarDialogo(
                          context, "Guardado correctamente", "Felicitaciones");
                    }
                    print(valores);
                  }),
                  child: const SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: Center(child: Text("Guardar"))))
            ]),
          ),
        )));
  }

  void _mostrarDialogo(BuildContext context, String mensaje, String tipo) {
    showDialog(
        context: context,
        builder: ((context) {
          return AlertDialog(
            title: Text(tipo),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [Text(mensaje)],
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
