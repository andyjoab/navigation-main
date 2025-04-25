import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Información personal'),
        backgroundColor: const Color.fromARGB(255, 161, 211, 226),
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

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Información academica'),
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: Text(''),
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
        title: const Text(
          'Reinscripción',
          style: TextStyle(
            color: Color.fromARGB(255, 243, 152, 33),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 123, 121, 128),
      ),
      body: const Center(
        child: Text('Reinscripcion'),
      ),
    );
  }
}

class PageFour extends StatelessWidget {
  const PageFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Servicio social/Residencias'),
        backgroundColor: const Color.fromARGB(255, 224, 94, 55),
      ),
      body: const Center(
        child: Text('Servicio social/Residencias'),
      ),
    );
  }
}
