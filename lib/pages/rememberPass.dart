import 'package:flutter/material.dart';

// ignore: camel_case_types
class rememberPassword extends StatelessWidget {
  const rememberPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recuperar Contraseña'),
      ),
      body: const Center(
        child:  Text(
            'Pantalla de recuperacion de contraseña olvidada',
            style: TextStyle(fontSize: 15),
          ),
      ),
    );
  }
}