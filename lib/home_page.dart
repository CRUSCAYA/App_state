import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> nombres = ["Limbert", "Elion", "Marco", "Eduardo", "Sabino"];
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page Bar"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              nombres[contador],
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
              onPressed: () {
                if (contador < nombres.length - 1) {
                  contador++;
                  setState(() {});
                }
              },
              child: Text("Siguiente"),
            ),
          ],
        ),
      ),
    );
  }
}