import 'package:flutter/material.dart';
// Importamos usando la ruta relativa para evitar errores de nombre de proyecto
import '../main.dart';

class AtraccionesPage extends StatelessWidget {
  const AtraccionesPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Tu lista de atracciones con las imágenes de GitHub
    final List<Map<String, String>> listaAtracciones = [
      {'nombre': 'Rueda de la fortuna', 'img': 'https://raw.githubusercontent.com/SusiHinojos/imagenes_paraflutter_6J_Febrero_2026/refs/heads/main/rueda.jpg'},
      {'nombre': 'Carrusel', 'img': 'https://raw.githubusercontent.com/SusiHinojos/imagenes_paraflutter_6J_Febrero_2026/refs/heads/main/carrusel.jpg'},
      {'nombre': 'Tren del parque', 'img': 'https://raw.githubusercontent.com/SusiHinojos/imagenes_paraflutter_6J_Febrero_2026/refs/heads/main/tren.jpg'},
      {'nombre': 'Barco vikingo', 'img': 'https://raw.githubusercontent.com/SusiHinojos/imagenes_paraflutter_6J_Febrero_2026/refs/heads/main/barco.jpg'},
      {'nombre': 'Tazas giratorias', 'img': 'https://raw.githubusercontent.com/SusiHinojos/imagenes_paraflutter_6J_Febrero_2026/refs/heads/main/tazas.jpg'},
      {'nombre': 'Sillas voladoras', 'img': 'https://raw.githubusercontent.com/SusiHinojos/imagenes_paraflutter_6J_Febrero_2026/refs/heads/main/sillas.jpg'},
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: purpleTheme,
        leading: const Icon(attractionsIcon, color: Colors.white),
        // Tu nombre solicitado en el AppBar
        title: const Text('Lidia Hinojos 6J - Atracciones', 
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14)),
        centerTitle: true,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, 
          crossAxisSpacing: 10, 
          mainAxisSpacing: 10, 
          childAspectRatio: 1.1,
        ),
        itemCount: listaAtracciones.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              border: Border.all(color: purpleTheme, width: 1.5),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                const SizedBox(height: 5),
                Text(
                  listaAtracciones[index]['nombre']!, 
                  style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: purpleTheme),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(6),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        listaAtracciones[index]['img']!, 
                        fit: BoxFit.cover, 
                        width: double.infinity,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: const CustomBottomBar(),
    );
  }
}