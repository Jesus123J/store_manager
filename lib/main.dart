import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: TableScreen(),
  ));
}

class TableScreen extends StatefulWidget {
  @override
  _TableScreenState createState() => _TableScreenState();
}

class _TableScreenState extends State<TableScreen> {
  int? hoveredIndex; // ✅ Variable para identificar la celda sobre la que está el mouse

  final List<Map<String, String>> datos = [
    {"ID": "1", "Nombre": "Producto A", "Precio": "10.99"},
    {"ID": "2", "Nombre": "Producto B", "Precio": "15.49"},
    {"ID": "3", "Nombre": "Producto C", "Precio": "8.99"},
    {"ID": "4", "Nombre": "Producto D", "Precio": "12.99"},
    {"ID": "5", "Nombre": "Producto E", "Precio": "20.99"},
    {"ID": "6", "Nombre": "Producto F", "Precio": "25.99"},
    {"ID": "7", "Nombre": "Producto G", "Precio": "18.99"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tabla Interactiva")),
      body: Column(
        children: [
          // 🔥 Encabezado estático
          Container(
            color: Colors.blueGrey,
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("ID", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                Text("Nombre", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                Text("Precio", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              ],
            ),
          ),

          // 🔄 Contenido con scroll y hover
          Expanded(
            child: ListView.builder(
              itemCount: datos.length,
              itemBuilder: (context, index) {
                return MouseRegion(
                  onEnter: (_) => setState(() => hoveredIndex = index), // ✅ Detecta cuando el mouse entra
                  onExit: (_) => setState(() => hoveredIndex = null),  // ✅ Detecta cuando el mouse sale
                  child: GestureDetector(
                    onTap: () {
                      print("Fila seleccionada: ${index + 1}"); // ✅ Imprime el número de fila
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                      decoration: BoxDecoration(
                        color: hoveredIndex == index ? Colors.blue.withOpacity(0.3) : Colors.transparent, // ✅ Cambia color al hacer hover
                        border: Border(bottom: BorderSide(color: Colors.grey)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(datos[index]["ID"]!, style: TextStyle(fontSize: 16)),
                          Text(datos[index]["Nombre"]!, style: TextStyle(fontSize: 16)),
                          Text("\$${datos[index]["Precio"]!}", style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}