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
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pushNamed(context, '/one');
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Información personal'),
              onTap: () {
                Navigator.pushNamed(context, '/two');
              },
            ),
            ListTile(
              leading: const Icon(Icons.school),
              title: const Text('Información académica'),
              onTap: () {
                Navigator.pushNamed(context, '/three');
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text('Página principal'),
      ),
    );
  }
}
