import 'package:flutter/material.dart';

class InputCustom extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? sufixIcon;
  final TextInputType? inputType;
  final bool isObscureText;
  final String formProperty;
  final Map<String, String> formValues;

  const InputCustom({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.sufixIcon,
    this.inputType,
    this.isObscureText = false,
    required this.formProperty,
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
      obscureText: isObscureText,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      onChanged: ((value) => formValues[formProperty] = value),
      validator: (value) {
        if (value == '' || value == null) {
          return "Este campo es requerido";
        }
        return value.length < 3 ? "Debe ser mayor que 3" : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        suffixIcon: sufixIcon == null ? null : Icon(sufixIcon),
        icon: icon == null ? null : Icon(icon),
      ),
    );
  }
}
