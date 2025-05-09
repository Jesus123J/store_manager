import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
      return  Scaffold(

            appBar: AppBar(
               title: Text("data"),
              actions: [
                PopupMenuButton<String>(
                  onSelected: (value) {
                    print("Seleccionaste: $value");
                  },
                  itemBuilder: (BuildContext context) {
                    return [
                      PopupMenuItem(value: "opcion1", child: Text("Opción 1")),
                      PopupMenuItem(value: "opcion2", child: Text("Opción 2")),
                      PopupMenuItem(value: "opcion3", child: Text("Opción 3")),
                    ];
                  },
                ),

              ],
            ),
            body: Container(
               color: Colors.deepOrangeAccent,
            ),

      );
  }
}