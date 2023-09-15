import 'package:flutter/material.dart';

class Test2Page extends StatefulWidget {
  const Test2Page({super.key});

  @override
  State<Test2Page> createState() => _Test2PageState();
}

class _Test2PageState extends State<Test2Page> {
  bool isTitleBold = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Estilos"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text(
              "Pokemon",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Phasellus lacinia accumsan odio, non porta lorem mattis vel. Mauris volutpat viverra interdum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vivamus hendrerit, felis in bibendum commodo, tellus libero sollicitudin mi, ac suscipit massa dui eget nisl. Vivamus maximus lectus vel massa ornare vulputate. ",
            ),
            Checkbox(
                value: isTitleBold,
                onChanged: (bool? value) {
                  isTitleBold = value!;
                  print(value);
                  setState(() {});
                }),
          ],
        ),
      ),
    );
  }
}