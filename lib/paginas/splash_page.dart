import 'package:flutter/material.dart';
import '../main.dart'; // El ".." sube una carpeta para encontrar main.dart

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Jardín de las Maravillas', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: purpleTheme)),
            const SizedBox(height: 10),
            const Text(miNombre, style: TextStyle(fontSize: 18, color: Colors.black54)),
            const SizedBox(height: 50),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: purpleTheme),
              onPressed: () => Navigator.pushReplacementNamed(context, '/bienvenida'),
              child: const Text('Entrar', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}