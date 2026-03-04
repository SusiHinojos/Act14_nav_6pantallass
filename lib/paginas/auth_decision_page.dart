import 'package:flutter/material.dart';
import 'package:myapp/utils/constants.dart';

class AuthDecisionPage extends StatelessWidget {
  const AuthDecisionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar para permitir al usuario volver
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: purpleTheme),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Jardín de las Maravillas',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: purpleTheme),
              ),
              const SizedBox(height: 10),
              const Text(
                miNombre,
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              const SizedBox(height: 60),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: purpleTheme,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: const Text('INICIAR SESIÓN'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: purpleTheme,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/registro');
                },
                child: const Text('CREAR CUENTA'),
              ),
              const Spacer(),
              const Icon(attractionsIcon, size: 100, color: purpleTheme),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
