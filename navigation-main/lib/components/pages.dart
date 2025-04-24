import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bienvenid@!'),
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: Text('Menu Principal'),
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Información personal'),
        backgroundColor: const Color.fromARGB(255, 175, 176, 221),
      ),
      body: const Center(
        child: SizedBox(
          width: 200,
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), label: Text('nombre')),
          ),
        ),
      ),
    );
  }
}

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Información académica'),
        backgroundColor: Colors.deepPurple,
      ),
      body: const Center(
        child: Text('Información académica'),
      ),
    );
  }
}
