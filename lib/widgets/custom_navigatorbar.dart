import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: 0,
        elevation: 0,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Mapa'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.compass_calibration), label: 'Direcciones')
        ]);
  }
}
