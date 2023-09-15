import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  List<Map<String, dynamic>> data = [
    {'id': 1, 'nombre': 'Auto modelo 1', 'image': 'assets/images/imagen1.png'},
    {'id': 2, 'nombre': 'Auto modelo 2', 'image': 'assets/images/imagen2.png'},
    {'id': 3, 'nombre': 'Auto modelo 3', 'image': 'assets/images/imagen3.png'},
    {'id': 4, 'nombre': 'Auto modelo 4', 'image': 'assets/images/imagen4.png'},
    {'id': 5, 'nombre': 'Auto modelo 5', 'image': 'assets/images/imagen5.png'},
    {'id': 6, 'nombre': 'Auto modelo 6', 'image': 'assets/images/imagen6.png'},
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carrusel de Imagenes"),
      ),
      body: Column(
        children: [
          Text(
            "${data[index]["nombre"]}",
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Image.asset(
            data[index]["image"],
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  index--;
                  setState(() {});
                },
                child: Text("Anterior"),
              ),
              ElevatedButton(
                onPressed: () {
                  index++;
                  setState(() {});
                },
                child: Text("Siguiente"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}