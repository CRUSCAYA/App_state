import 'package:app_state/home_page.dart';
import 'package:app_state/test1_page.dart';
import 'package:app_state/test2_page.dart';
import 'package:app_state/test_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      // Configura la pantalla principal de la aplicación
      //home: HomePage(),
      //home:Test1Page()
      home:TestPage()
      //home:Test2Page()
    ),
  );
}
