import 'package:flutter/material.dart';
import '../main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _u = TextEditingController();
  final TextEditingController _p = TextEditingController();
  final TextEditingController _c = TextEditingController();

  void _validar() {
    if (_u.text.isEmpty || _p.text.isEmpty || _c.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Por favor llena todo')));
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
      appBar: AppBar(backgroundColor: purpleTheme, iconTheme: const IconThemeData(color: Colors.white), title: const Text(miNombre, style: TextStyle(color: Colors.white, fontSize: 14))),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            const Text('Jardín de las Maravillas', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: purpleTheme)),
            const SizedBox(height: 30),
            _field("Usuario", Icons.person, _u),
            const SizedBox(height: 10),
            _field("Contraseña", Icons.lock, _p, obscure: true),
            const SizedBox(height: 10),
            _field("Confirmar", Icons.lock_reset, _c, obscure: true),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: purpleTheme, minimumSize: const Size(double.infinity, 50)),
              onPressed: _validar,
              child: const Text('INGRESAR', style: TextStyle(color: Colors.white)),
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
      decoration: InputDecoration(labelText: l, prefixIcon: Icon(i, color: purpleTheme), filled: true, fillColor: purpleLight, border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none)),
    );
  }
}