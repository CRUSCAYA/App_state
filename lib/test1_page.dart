import 'package:flutter/material.dart';
//h
class Test1Page extends StatefulWidget {
  const Test1Page({super.key});

  @override
  State<Test1Page> createState() => _Test1PageState();
}

class _Test1PageState extends State<Test1Page> {
  int currentIndex =1; 
  //funciones goToPreviousImagex se utilizan como manejador para el boton anterior.
  //Estas funciones actualizan el estado de currentIndexsegún corresponda y llaman a setState() 
  //para indicar a Flutter que debe reconstruir la interfaz de usuario con la nueva imagen.
   void goToPreviousImage() {
    if (currentIndex > 1) {
      setState(() {
        currentIndex--;
      });
    }
  }// Índice de la imagen actual
   //funciones goToNextImage se utilizan como manejadores para el boton siguiente.
   //Estas funciones actualizan el estado de currentIndex según corresponda y llaman a setState()
   // para indicar a Flutter que debe reconstruir la interfaz de usuario con la nueva imagen.
  void goToNextImage() {
    if (currentIndex < 6) {
      setState(() {
        currentIndex++;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carrusel de Imagenes"),
      ),
      body: Column(
        children: [
          Text("Imagen $currentIndex"),
          Image.asset("assets/images/imagen$currentIndex.png"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: goToPreviousImage,
                child: Text("Anterior"),
              ),
              ElevatedButton(
                onPressed: goToNextImage,
                child: Text("Siguiente"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}