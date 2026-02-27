import 'package:flutter/material.dart';
// Importamos usando rutas relativas (sin el nombre del proyecto)
import 'paginas/splash_page.dart';
import 'paginas/bienvenida_page.dart';
import 'paginas/registro_page.dart';
import 'paginas/login_page.dart';
import 'paginas/inicio_page.dart';
import 'paginas/atracciones_page.dart';

bool isLoggedIn = false;
const IconData attractionsIcon = IconData(0xe0b4, fontFamily: 'MaterialIcons');
const Color purpleTheme = Colors.deepPurple;
const Color purpleLight = Color(0xFFF3E5F5);
const String miNombre = "Lidia Susana Hinojos Sierra 6J";

void main() => runApp(const JardinMaravillasApp());

class JardinMaravillasApp extends StatelessWidget {
  const JardinMaravillasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jardín de las Maravillas',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: purpleTheme),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashPage(),
        '/bienvenida': (context) => const BienvenidaPage(),
        '/registro': (context) => const RegistroPage(),
        '/login': (context) => const LoginPage(),
        '/inicio': (context) => const InicioPage(),
        '/atracciones': (context) => const AtraccionesPage(),
      },
    );
  }
}

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(border: Border(top: BorderSide(color: purpleTheme, width: 2.0))),
      child: BottomAppBar(
        color: Colors.white,
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.person, color: purpleTheme),
              onPressed: () {
                isLoggedIn = false;
                Navigator.pushNamedAndRemoveUntil(context, '/bienvenida', (route) => false);
              },
            ),
            IconButton(
              icon: const Icon(attractionsIcon, color: purpleTheme, size: 28),
              onPressed: () => Navigator.pushNamed(context, '/atracciones'),
            ),
            IconButton(
              icon: const Icon(Icons.home, color: purpleTheme),
              onPressed: () => Navigator.pushNamed(context, '/inicio'),
            ),
            const Icon(Icons.confirmation_number, color: Colors.grey),
            const Icon(Icons.shopping_cart, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}