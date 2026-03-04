import 'package:flutter/material.dart';
import '../constants.dart'; // Para usar purpleTheme e isLoggedIn

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(top: BorderSide(color: purpleTheme, width: 2.0)),
      ),
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
