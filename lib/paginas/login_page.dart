import 'package:flutter/material.dart';
import '../utils/constants.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _u = TextEditingController();
  final TextEditingController _p = TextEditingController();
  // Controlador para el nuevo campo
  final TextEditingController _c = TextEditingController();

  void _validar() {
    // Validar que ningún campo esté vacío
    if (_u.text.isEmpty || _p.text.isEmpty || _c.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Por favor, llena todos los campos')));
    // Validar que las contraseñas coincidan
    } else if (_p.text != _c.text) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Las contraseñas no coinciden')));
    } else {
      isLoggedIn = true;
      Navigator.pushReplacementNamed(context, '/inicio');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar para el botón de retroceso
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: purpleTheme),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            const Text('Iniciar Sesión', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: purpleTheme)),
            const SizedBox(height: 30),
            _field("Usuario", Icons.person, _u),
            const SizedBox(height: 10),
            _field("Contraseña", Icons.lock, _p, obscure: true),
            const SizedBox(height: 10),
            // Nuevo campo para confirmar contraseña
            _field("Confirmar Contraseña", Icons.lock_reset, _c, obscure: true),
            const SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: purpleTheme, foregroundColor: Colors.white, minimumSize: const Size(double.infinity, 50)),
              onPressed: _validar,
              child: const Text('INGRESAR'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _field(String l, IconData i, TextEditingController c, {bool obscure = false}) {
    return TextField(
      controller: c,
      obscureText: obscure,
      decoration: InputDecoration(
        labelText: l,
        prefixIcon: Icon(i, color: purpleTheme),
        filled: true,
        fillColor: purpleLight,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
      ),
    );
  }
}
