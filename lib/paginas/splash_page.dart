import 'package:flutter/material.dart';
import 'package:myapp/utils/constants.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Fondo blanco
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(attractionsIcon, size: 120, color: purpleTheme), // Logo morado
              const SizedBox(height: 20),
              const Text(
                "Jardín de las Maravillas",
                textAlign: TextAlign.center,
                style: TextStyle(color: purpleTheme, fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                miNombre, // Tu nombre
                style: TextStyle(color: purpleTheme, fontSize: 16),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: purpleTheme, // Botón morado
                  foregroundColor: Colors.white, // Texto blanco
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  // Navegar a la página de decisión de autenticación
                  Navigator.pushReplacementNamed(context, '/auth_decision');
                },
                child: const Text('ENTRAR'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
