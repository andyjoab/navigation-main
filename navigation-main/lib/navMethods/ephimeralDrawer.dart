import 'package:flutter/material.dart';

class EphimeralDrawerNavigation extends StatelessWidget {
  const EphimeralDrawerNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menú'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 85, 112, 233),
              ),
              child: Text(
                'InscribeTEC',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text(
                'Información personal',
                style: TextStyle(
                  color: Color.fromARGB(255, 124, 212, 124),
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/one');
              },
            ),
            ListTile(
              leading: const Icon(Icons.school),
              title: const Text(
                'Información académica',
                style: TextStyle(
                  color: Color.fromARGB(255, 18, 103, 230),
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/two');
              },
            ),
            ListTile(
              leading: const Icon(Icons.abc_sharp),
              title: const Text(
                'Reinscripción',
                style: TextStyle(
                  color: Color.fromARGB(255, 133, 130, 126),
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/three');
              },
            ),
            ListTile(
              leading: const Icon(Icons.source_sharp),
              title: const Text(
                'Servicio social/Residencias',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 12, 162),
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/four');
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text('Información personal'),
      ),
    );
  }
}
