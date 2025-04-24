import 'package:flutter/material.dart';
import 'package:navigation/components/pages.dart';

class PersistentDrawer extends StatefulWidget {
  const PersistentDrawer({super.key});

  @override
  State<PersistentDrawer> createState() => _PersistentDrawerState();
}

class _PersistentDrawerState extends State<PersistentDrawer> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    const PageOne(),
    const PageTwo(),
    const PageThree(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InscribeTEC'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 93, 96, 252),
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
                _selectPage(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Información personal'),
              onTap: () {
                _selectPage(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.school),
              title: const Text('Información académica'),
              onTap: () {
                _selectPage(2);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }

  void _selectPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
