import 'package:flutter/material.dart';
import 'package:myapp/paginas/atracciones_page.dart';
import 'package:myapp/paginas/inicio_page.dart';
import 'package:myapp/paginas/login_page.dart';
import 'package:myapp/paginas/registro_page.dart';
import 'package:myapp/paginas/splash_page.dart';
import 'package:myapp/paginas/auth_decision_page.dart'; // Importar la nueva página

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jardín de las Maravillas',
      // La ruta inicial es '/', que corresponde a SplashPage
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashPage(),
        // Nueva ruta para la página de decisión
        '/auth_decision': (context) => const AuthDecisionPage(),
        '/login': (context) => const LoginPage(),
        '/registro': (context) => const RegistroPage(),
        '/inicio': (context) => const InicioPage(),
        '/atracciones': (context) => const AtraccionesPage(),
      },
    );
  }
}
