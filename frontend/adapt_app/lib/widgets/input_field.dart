import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({super.key, required this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue,
            width: 1,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        fillColor: Color.fromARGB(188, 255, 255, 255),
        filled: true,
        hintText: label,
        contentPadding: const EdgeInsets.only(left: 20),
      ),
    );
  }
}
