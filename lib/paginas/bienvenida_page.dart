import 'package:flutter/material.dart';
import '../main.dart';

class BienvenidaPage extends StatelessWidget {
  const BienvenidaPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Jardín de las Maravillas', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: purpleTheme)),
            const Text(miNombre, style: TextStyle(fontSize: 16, color: Colors.black54)),
            const SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: purpleTheme, minimumSize: const Size(250, 50)),
              onPressed: () => Navigator.pushNamed(context, '/login'),
              child: const Text('Iniciar sesión', style: TextStyle(color: Colors.white)),
            ),
            const SizedBox(height: 15),
            OutlinedButton(
              style: OutlinedButton.styleFrom(side: const BorderSide(color: purpleTheme), minimumSize: const Size(250, 50)),
              onPressed: () => Navigator.pushNamed(context, '/registro'),
              child: const Text('Crear cuenta', style: TextStyle(color: purpleTheme)),
            ),
            const SizedBox(height: 40),
            const Icon(attractionsIcon, size: 120, color: purpleTheme),
          ],
        ),
      ),
    );
  }
}