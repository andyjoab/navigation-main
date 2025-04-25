import 'package:flutter/material.dart';
import '../components/pages.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    const PageOne(),
    const PageTwo(),
    const PageThree(),
    const PageFour(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Barra de navegación'),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Información personal',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Información académica',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.abc_sharp),
            label: 'Reinscripción',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.source_sharp),
            label: 'Servicio social/Residencias',
          ),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
