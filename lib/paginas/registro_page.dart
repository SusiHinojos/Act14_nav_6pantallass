import 'package:flutter/material.dart';
import '../main.dart';

class RegistroPage extends StatefulWidget {
  const RegistroPage({super.key});
  @override
  State<RegistroPage> createState() => _RegistroPageState();
}

class _RegistroPageState extends State<RegistroPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _fechaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: purpleTheme, iconTheme: const IconThemeData(color: Colors.white), title: const Text('Crear Cuenta', style: TextStyle(color: Colors.white))),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _buildField("Nombre(s)", Icons.person, (v) => v!.isEmpty ? "Campo obligatorio" : null),
              _buildField("Apellido(s)", Icons.person, (v) => v!.isEmpty ? "Campo obligatorio" : null),
              TextFormField(
                controller: _fechaController,
                decoration: InputDecoration(labelText: "Fecha de nacimiento", prefixIcon: const Icon(Icons.calendar_today, color: purpleTheme), filled: true, fillColor: purpleLight, border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none)),
                validator: (v) => v!.isEmpty ? "Campo obligatorio" : null,
              ),
              const SizedBox(height: 15),
              _buildField("Correo", Icons.email, (v) => !v!.contains('@') ? "Correo inválido" : null),
              _buildField("Teléfono", Icons.phone, (v) => v!.length < 10 ? "10 dígitos requeridos" : null, type: TextInputType.phone),
              const SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: purpleTheme, minimumSize: const Size(double.infinity, 50)),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    isLoggedIn = true;
                    Navigator.pushReplacementNamed(context, '/inicio');
                  }
                },
                child: const Text('CREAR CUENTA', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildField(String label, IconData icon, String? Function(String?)? validator, {TextInputType type = TextInputType.text}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        keyboardType: type,
        validator: validator,
        decoration: InputDecoration(labelText: label, prefixIcon: Icon(icon, color: purpleTheme), filled: true, fillColor: purpleLight, border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none)),
      ),
    );
  }
}