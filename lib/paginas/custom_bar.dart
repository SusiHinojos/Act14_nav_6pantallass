import 'package:flutter/material.dart';
import 'package:myapp/utils/constants.dart';

class CustomBottomAppBar extends StatelessWidget {
  final String currentPage;

  const CustomBottomAppBar({super.key, required this.currentPage});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      elevation: 10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildIcon(context, Icons.person, '/auth_decision', 'Usuario'),
          _buildIcon(context, attractionsIcon, '/atracciones', 'Atracciones'),
          _buildIcon(context, Icons.home, '/inicio', 'Inicio'),
          _buildIcon(context, Icons.local_activity, '/boletos', 'Boletos'),
          _buildIcon(context, Icons.shopping_cart, '/carrito', 'Carrito'),
        ],
      ),
    );
  }

  Widget _buildIcon(BuildContext context, IconData icon, String route, String pageName) {
    final bool isSelected = currentPage == pageName;
    return IconButton(
      icon: Icon(icon, color: isSelected ? purpleTheme : Colors.grey, size: 30),
      onPressed: () {
        // No hacer nada si ya estamos en la página seleccionada
        if (isSelected) return;

        // Si es una de las páginas principales, reemplazamos para no acumular historial
        if (route == '/inicio' || route == '/atracciones') {
          Navigator.pushReplacementNamed(context, route);
        } 
        // Si es la página de autenticación, la mostramos encima para poder volver
        else if (route == '/auth_decision') {
          Navigator.pushNamed(context, route);
        }
        // Las otras rutas (Boletos, Carrito) no hacen nada por ahora
      },
    );
  }
}
